from datetime import datetime
import json
from urllib.parse import urlencode
import time


def pow_sign(encoded_params, count):
    # Note: This is a placeholder for the powSign function
    # You'll need to implement this based on your specific requirements
    return "signature_placeholder"


def vdf_async(data):
    puzzle = data['args']['puzzle']
    mod = data['args']['mod']
    x = data['args']['x']
    t = data['args']['t']

    start_time = int(time.time() * 1000)  # Get current time in milliseconds

    # Convert hex strings to integers
    big_x = int(x, 16)
    big_mod = int(mod, 16)

    count = 0
    while(int(time.time() * 1000) - start_time < data['minTime']) or count < t:
        # Square big_x and take modulo using pow() function
        big_x = pow(big_x, 2, big_mod)  # This is equivalent to (big_x * big_x) % big_mod but more efficient
        count += 1

        current_time = int(time.time() * 1000)
        elapsed_time = current_time - start_time

        # Check if minimum time has been reached when i < t
        if count < t and elapsed_time < data['minTime']:
            continue

        # Check if maximum time has been exceeded
        if elapsed_time > data['maxTime']:
            break

    end_time = int(time.time() * 1000)
    total_time = end_time - start_time

    # Create sign object
    sign_obj = {
        'runTimes': count,
        'spendTime': total_time,
        't': count,
        'x': hex(big_x)[2:]  # Convert to hex and remove '0x' prefix
    }

    # Sort parameters and create encoded string
    sorted_params = ['runTimes', 'spendTime', 't', 'x']
    encoded_params = urlencode({k: sign_obj[k] for k in sorted_params})

    # Get signature
    sign = pow_sign(encoded_params, count)

    # Return final result
    return {
        'puzzle': puzzle,
        'spendTime': total_time,
        'runTimes': count,
        'sid': data['sid'],
        'args': json.dumps({
            'x': hex(big_x)[2:],
            't': count,
            'sign': sign
        })
    }


# Example usage
sample_data = {
    "needCheck": True,
    "sid": "737d2981-a974-4f4e-93e3-7ac1e5448727",
    "hashFunc": "VDF_FUNCTION",
    "maxTime": 550,
    "minTime": 500,
    "args": {
        "mod": "6f72a8d0fada0b52d55c7f375f4f2c4e85",
        "t": 100000,
        "puzzle": "Yg2SisUbVqdze/D+Arw96fCwMlGfI4pYAxc8pvCT0uBo6CwJZwSVwMROWz3SAgh8/fOFKjToyegT\r\nDRSDT7cN/tlGIG4nCLktTMRKfAV2nBOKgqzidHRwNjenRHM2o321boDdrriq8vHKI8N7N+kl+Ei4\r\nWlr6NwLJpEB8aUq94vaejJ6cB39EJhBtZr2j1qYL7g1TzkFXA/YFHQlJ+r6dYqK5wgIXNs4BoO7j\r\nxz7XgkYUErBFpimPbhbp5vacthER2we+XgV3nY8eEChVonPfkw==",
        "x": "d85cfa49da"
    }
}
print(vdf_async(sample_data))

# print(int(time.time() * 1000))