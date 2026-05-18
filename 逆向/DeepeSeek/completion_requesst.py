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
    'x-ds-pow-response': 'eyJhbGdvcml0aG0iOiJEZWVwU2Vla0hhc2hWMSIsImNoYWxsZW5nZSI6IjE4MWYzMGM3MTFmMjAxMGVmYmZhNmJmNjM4OWYzODM4MTVjMWRmZWE3YmI2YTFlMWFmOGE4Njc0NmNjYjRmODciLCJzYWx0IjoiYWIwMTg4OWUyN2Y2ZDNlZWEzMWQiLCJhbnN3ZXIiOjExNzE5Nywic2lnbmF0dXJlIjoiMTczZmNjNmQwYWI4ZWVkNWU1NWY3NzA3ZmUzMmRkZjY5OWRkMzFkYTczODE1MjIzYzU4MWQzMWY0N2Q1MzQzYyIsInRhcmdldF9wYXRoIjoiL2FwaS92MC9jaGF0L2NvbXBsZXRpb24ifQ==',
    'x-hif-leim': 'xyzhblCGYsyhepLr2ja2/dfbRo2gVncRhD8MvROn6LKPNnP8cK2GeVU=.M1xfXNPv/aRaKpo6',
    # 'cookie': 'HWWAFSESID=b2b9b167281830edfc67; HWWAFSESTIME=1778825133647; ds_session_id=a8a49aaaa3fa4450a95a2380b27a595f',
}

json_data = {
    'chat_session_id': '0f7cb956-7a98-4698-9a3e-8eb003484f46',
    'parent_message_id': None,
    'model_type': 'default',
    'prompt': 'hello deepseek',
    'ref_file_ids': [],
    'thinking_enabled': False,
    'search_enabled': True,
    'preempt': False,
}

response = requests.post('https://chat.deepseek.com/api/v0/chat/completion', cookies=cookies, headers=headers, json=json_data)