"""
DeepSeekHashV1 Proof-of-Work Solver
=====================================
Algorithm: SHA3-256 padding (0x06) + Keccak-f[1600] with 23 rounds (skipping RC[0])
Input:  challenge, salt, difficulty, expire_at
Output: nonce (answer)

Usage:
    python deepseek_pow_solver.py
    # or import and call solve_pow(...)
"""

import ctypes
import subprocess
import tempfile
import os
import time


# ── C implementation (fast, ~500k nonces/sec) ────────────────────────────────

_C_SOURCE = r"""
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

static const uint64_t RC[24] = {
    0x0000000000000001ULL, 0x0000000000008082ULL,
    0x800000000000808AULL, 0x8000000080008000ULL,
    0x000000000000808BULL, 0x0000000080000001ULL,
    0x8000000080008081ULL, 0x8000000000008009ULL,
    0x000000000000008AULL, 0x0000000000000088ULL,
    0x0000000080008009ULL, 0x000000008000000AULL,
    0x000000008000808BULL, 0x800000000000008BULL,
    0x8000000000008089ULL, 0x8000000000008003ULL,
    0x8000000000008002ULL, 0x8000000000000080ULL,
    0x000000000000800AULL, 0x800000008000000AULL,
    0x8000000080008081ULL, 0x8000000000008080ULL,
    0x0000000080000001ULL, 0x8000000080008008ULL,
};

/* Rho offsets, index = x + 5*y */
static const int RHO[25] = {
     0,  1, 62, 28, 27,
    36, 44,  6, 55, 20,
     3, 10, 43, 25, 39,
    41, 45, 15, 21,  8,
    18,  2, 61, 56, 14,
};

/* Pi permutation, index = x + 5*y */
static const int PI[25] = {
     0, 10, 20,  5, 15,
    16,  1, 11, 21,  6,
     7, 17,  2, 12, 22,
    23,  8, 18,  3, 13,
    14, 24,  9, 19,  4,
};

#define ROL64(x, n) (((x) << (n)) | ((x) >> (64 - (n))))

/*
 * DeepSeekHashV1 permutation:
 * Keccak-f[1600] with 23 rounds, starting from RC[1] (RC[0] is skipped).
 */
static void deepseek_keccak_f(uint64_t *A) {
    uint64_t C[5], D[5], B[25];
    for (int round = 1; round < 24; round++) {   /* rounds 1..23 */
        /* Theta */
        for (int x = 0; x < 5; x++)
            C[x] = A[x] ^ A[x+5] ^ A[x+10] ^ A[x+15] ^ A[x+20];
        for (int x = 0; x < 5; x++)
            D[x] = C[(x+4)%5] ^ ROL64(C[(x+1)%5], 1);
        for (int i = 0; i < 25; i++)
            A[i] ^= D[i % 5];
        /* Rho + Pi */
        for (int i = 0; i < 25; i++)
            B[PI[i]] = ROL64(A[i], RHO[i]);
        /* Chi */
        for (int i = 0; i < 25; i++)
            A[i] = B[i] ^ ((~B[(i/5)*5 + (i+1)%5]) & B[(i/5)*5 + (i+2)%5]);
        /* Iota */
        A[0] ^= RC[round];
    }
}

/*
 * Compute DeepSeekHashV1(data, data_len) → 32-byte digest in `out`.
 * Uses SHA3-256 sponge parameters (rate=136 bytes) with 0x06 domain separator.
 */
void deepseek_hash(const uint8_t *data, int data_len, uint8_t *out) {
    uint8_t buf[4096];   /* enough for prefix + nonce + padding */
    uint64_t state[25];
    const int rate = 136;

    /* Copy data and apply SHA3 padding */
    memcpy(buf, data, data_len);
    buf[data_len] = 0x06;
    int padded_len = data_len + 1;
    int pad_to = ((padded_len + rate - 1) / rate) * rate;
    memset(buf + padded_len, 0, pad_to - padded_len);
    buf[pad_to - 1] |= 0x80;

    /* Absorb */
    memset(state, 0, sizeof(state));
    for (int offset = 0; offset < pad_to; offset += rate) {
        for (int i = 0; i < 17; i++) {
            uint64_t lane;
            memcpy(&lane, buf + offset + i * 8, 8);
            state[i] ^= lane;
        }
        deepseek_keccak_f(state);
    }

    /* Squeeze: first 32 bytes (little-endian lanes) */
    for (int i = 0; i < 4; i++) {
        uint64_t lane = state[i];
        for (int b = 0; b < 8; b++)
            out[i*8 + b] = (lane >> (b * 8)) & 0xFF;
    }
}

/*
 * Search nonce in [0, max_nonce) such that
 *   deepseek_hash(prefix || str(nonce)) == target
 * Returns the nonce on success, -1 if not found.
 */
long long solve(const char *prefix, int prefix_len,
                const uint8_t *target, long long max_nonce) {
    uint8_t buf[4096];
    uint8_t digest[32];
    char nonce_str[32];

    memcpy(buf, prefix, prefix_len);

    for (long long nonce = 0; nonce < max_nonce; nonce++) {
        int nonce_len = snprintf(nonce_str, sizeof(nonce_str), "%lld", nonce);
        memcpy(buf + prefix_len, nonce_str, nonce_len);

        deepseek_hash(buf, prefix_len + nonce_len, digest);

        if (memcmp(digest, target, 32) == 0)
            return nonce;
    }
    return -1;
}
"""

_lib = None

def _get_lib():
    """Compile and cache the C shared library."""
    global _lib
    if _lib is not None:
        return _lib

    src = os.path.join(tempfile.gettempdir(), "deepseek_pow.c")
    so  = os.path.join(tempfile.gettempdir(), "deepseek_pow.so")

    with open(src, "w") as f:
        f.write(_C_SOURCE)

    result = subprocess.run(
        ["gcc", "-O3", "-shared", "-fPIC", "-o", so, src],
        capture_output=True,
    )
    if result.returncode != 0:
        raise RuntimeError("gcc compilation failed:\n" + result.stderr.decode())

    lib = ctypes.CDLL(so)
    lib.solve.restype  = ctypes.c_longlong
    lib.solve.argtypes = [ctypes.c_char_p, ctypes.c_int,
                          ctypes.c_char_p, ctypes.c_longlong]
    lib.deepseek_hash.restype  = None
    lib.deepseek_hash.argtypes = [ctypes.c_char_p, ctypes.c_int,
                                  ctypes.c_char_p, ctypes.c_int]
    _lib = lib
    return lib


# ── Pure-Python fallback (slow, ~2500 nonces/sec) ────────────────────────────

_RC = [
    0x0000000000000001, 0x0000000000008082, 0x800000000000808A, 0x8000000080008000,
    0x000000000000808B, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009,
    0x000000000000008A, 0x0000000000000088, 0x0000000080008009, 0x000000008000000A,
    0x000000008000808B, 0x800000000000008B, 0x8000000000008089, 0x8000000000008003,
    0x8000000000008002, 0x8000000000000080, 0x000000000000800A, 0x800000008000000A,
    0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008,
]
_ROT = [
    [0, 36, 3, 41, 18],
    [1, 44, 10, 45, 2],
    [62, 6, 43, 15, 61],
    [28, 55, 25, 21, 56],
    [27, 20, 39, 8, 14],
]

def deepseek_hash_py(data: bytes) -> bytes:
    """
    Pure-Python DeepSeekHashV1.
    SHA3-256 sponge (rate=136, pad=0x06) with Keccak-f[1600] 23 rounds (skip RC[0]).
    """
    rate = 136
    padded = bytearray(data)
    padded.append(0x06)
    while len(padded) % rate:
        padded.append(0x00)
    padded[-1] |= 0x80

    state = [0] * 25

    for offset in range(0, len(padded), rate):
        block = padded[offset:offset + rate]
        for i in range(17):
            state[i] ^= int.from_bytes(block[i*8:(i+1)*8], 'little')

        A = list(state)
        for rc in _RC[1:]:                          # rounds 1..23
            C = [A[x] ^ A[x+5] ^ A[x+10] ^ A[x+15] ^ A[x+20] for x in range(5)]
            D = [C[(x-1)%5] ^ ((C[(x+1)%5] << 1 | C[(x+1)%5] >> 63) & 0xFFFFFFFFFFFFFFFF)
                 for x in range(5)]
            A = [A[i] ^ D[i % 5] for i in range(25)]
            B = [0] * 25
            for x in range(5):
                for y in range(5):
                    r = _ROT[x][y]
                    v = A[x + 5*y]
                    B[y + 5*((2*x + 3*y) % 5)] = ((v << r) | (v >> (64 - r))) & 0xFFFFFFFFFFFFFFFF
            A = [B[i] ^ ((~B[(i//5)*5 + (i+1)%5]) & B[(i//5)*5 + (i+2)%5])
                 for i in range(25)]
            A[0] ^= rc
        state = A

    return b''.join(state[i].to_bytes(8, 'little') for i in range(4))


# ── Public API ────────────────────────────────────────────────────────────────

def solve_pow(challenge: str, salt: str, difficulty: int, expire_at: str,
              use_c: bool = True, verbose: bool = True) -> int | None:
    """
    Solve a DeepSeekHashV1 proof-of-work challenge.

    Parameters
    ----------
    challenge   : hex string (32 bytes / 64 hex chars) – the target hash
    salt        : string from the challenge object
    difficulty  : int – upper bound for nonce search
    expire_at   : string representation of the expiry timestamp
    use_c       : use compiled C for speed (falls back to Python if gcc unavailable)
    verbose     : print progress info

    Returns
    -------
    nonce (int) if found, None otherwise.

    Input format to hash:
        f"{salt}_{expire_at}_{nonce}"
    """
    target = bytes.fromhex(challenge)
    prefix = f"{salt}_{expire_at}_"

    if verbose:
        print(f"[*] DeepSeekHashV1 solver")
        print(f"    prefix:     {prefix}")
        print(f"    target:     {challenge}")
        print(f"    difficulty: {difficulty}")

    t0 = time.time()

    if use_c:
        try:
            lib = _get_lib()
            result = lib.solve(
                prefix.encode(), len(prefix),
                target, difficulty,
            )
            elapsed = time.time() - t0
            nonce = int(result) if result >= 0 else None
            if verbose:
                if nonce is not None:
                    print(f"[+] Found nonce: {nonce}  ({elapsed:.2f}s, "
                          f"{difficulty/elapsed:,.0f} nonces/s)")
                else:
                    print(f"[-] No solution in {difficulty} iterations ({elapsed:.2f}s)")
            return nonce
        except Exception as e:
            if verbose:
                print(f"[!] C backend unavailable ({e}), falling back to Python…")

    # Pure-Python fallback
    target_bytes = bytes.fromhex(challenge)
    for nonce in range(difficulty):
        if deepseek_hash_py((prefix + str(nonce)).encode()) == target_bytes:
            elapsed = time.time() - t0
            if verbose:
                print(f"[+] Found nonce: {nonce}  ({elapsed:.2f}s)")
            return nonce

    elapsed = time.time() - t0
    if verbose:
        print(f"[-] No solution found ({elapsed:.2f}s)")
    return None


# ── Example / self-test ───────────────────────────────────────────────────────

if __name__ == "__main__":
    # Known-good test vector
    answer = solve_pow(
        challenge   = "56e3ee48f7e7f1dc655f9438e4c2fac82fa00fcc874ccd25b03898f86e6bcfa7",
        salt        = "8a95be83c19fd406b20f",
        difficulty  = 144000,
        expire_at   = "1778828413079",
    )

    print(f"[✓]  get answer success = {answer}")