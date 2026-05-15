import requests

cookies = {
    'SUB': '_2A25KsZGbDeRhGeNN7VAS8izEyz6IHXVpzqtTrDV8PUJbkNANLVjbkW1NSbbg4ooEIPTY5a6YGYF_mw7A5cgruQxS',
}

headers = {
    'accept': 'application/json, text/plain, */*',
    'accept-language': 'zh-CN,zh;q=0.9',
    'cache-control': 'no-cache',
    'client-version': 'v2.47.32',
    'content-type': 'application/json',
    'origin': 'https://weibo.com',
    'pragma': 'no-cache',
    'priority': 'u=1, i',
    'referer': 'https://weibo.com/',
    'sec-ch-ua': '"Not(A:Brand";v="99", "Google Chrome";v="133", "Chromium";v="133"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-origin',
    'server-version': 'v2025.02.19.1',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',
    'x-requested-with': 'XMLHttpRequest'
}

json_data = {
    'friend_uid': '2322870610'
}

response = requests.post('https://weibo.com/ajax/friendships/create', cookies=cookies, headers=headers, json=json_data)
print(response.json())
