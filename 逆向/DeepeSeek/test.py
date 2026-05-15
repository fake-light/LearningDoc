import hashlib

challenge = "25993986747b46f944b3fc95315e841a0d976898b7c2e9f994f3d2b21809288a"

target = bytes.fromhex(challenge)

salt = "ba086ad9cd785ce30506"
expire_at = "1778827137414"

nonce = 111232

msg = f"{salt}_{expire_at}_{nonce}".encode()

digest = hashlib.sha3_256(msg).digest()

print(digest.hex())

print(digest == target)