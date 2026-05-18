import requests

cookies = {
    'HWWAFSESID': 'b2b9b167281830edfc67',
    'HWWAFSESTIME': '1778825133647',
    'ds_session_id': 'a8a49aaaa3fa4450a95a2380b27a595f',
}

headers = {
    'accept': '*/*',
    'accept-language': 'zh-CN,zh;q=0.9',
    'authorization': 'Bearer 7sBahw/qMD2DQHjH+2JGtHiOVtqBS0thMB8mC9ytdlbkRMYYuUTP9Jmk3vgaDPcr',
    'cache-control': 'no-cache',
    'content-type': 'application/json',
    'origin': 'https://chat.deepseek.com',
    'pragma': 'no-cache',
    'priority': 'u=1, i',
    'referer': 'https://chat.deepseek.com/a/chat/s/0f7cb956-7a98-4698-9a3e-8eb003484f46',
    'sec-ch-ua': '"Chromium";v="148", "Google Chrome";v="148", "Not/A)Brand";v="99"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-origin',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36',
    'x-app-version': '2.0.0',
    'x-client-locale': 'zh_CN',
    'x-client-platform': 'web',
    'x-client-timezone-offset': '28800',
    'x-client-version': '2.0.0',
    # 'cookie': 'HWWAFSESID=b2b9b167281830edfc67; HWWAFSESTIME=1778825133647; ds_session_id=a8a49aaaa3fa4450a95a2380b27a595f',
}

json_data = {
    'target_path': '/api/v0/chat/completion',
}

response = requests.post(
    'https://chat.deepseek.com/api/v0/chat/create_pow_challenge',
    cookies=cookies,
    headers=headers,
    json=json_data,
)

response_data = response.json()
challenge = response_data['data']['biz_data']['challenge']
# challenge内容:
# {
#   "algorithm": "DeepSeekHashV1",
#   "challenge": "cdfaabb6fc2cbe30f3dc1ded3ad05720c2a9e446d02f94f79edcce2f48f45118",
#   "salt": "2059882febd599636a31",
#   "signature": "bf01aa53c253a08d15e87917dc19da4f514ea5448a219cb9f86c822eac19aeb4",
#   "difficulty": 144000,
#   "expire_at": 1778831547377,
#   "expire_after": 300000,
#   "target_path": "/api/v0/chat/completion"
# }