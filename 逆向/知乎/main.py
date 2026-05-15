import requests
import execjs
from urllib.parse import urlencode

# 加载 JavaScript 文件内容
with open("x-zse-96.js", "r", encoding="utf-8") as file:
    js_code = file.read()

# 编译 JavaScript 代码
ctx = execjs.compile(js_code)


params = {
    'gk_version': 'gz-gaokao',
    't': 'general',
    'q': '巴印冲突',
    'correction': '1',
    'offset': '0',
    'limit': '20',
    'filter_fields': '',
    'lc_idx': '0',
    'show_all_topics': '0',
    'search_source': 'Normal',
}
uri = "/api/v4/search_v3"
# 编码参数为查询字符串
query_string = urlencode(params)
# 拼接 URI 和查询字符串
full_uri = f"{uri}?{query_string}"

# 调用 JS 文件中的函数
result = ctx.call("getToken", full_uri)
xZst81 = result.get('xZst81')
xZse96 = result.get('xZse96')
print(f"xZst81 => {xZst81}")
print(f"xZse96 => {xZse96}")

cookies = {
    'd_c0': 'AiDSZlKnqhmPTkcBWpDZ93D74yCHxszDhHY=|1733729098',
    'z_c0': '2|1:0|10:1733729129|4:z_c0|92:Mi4xMmV0TlRRQUFBQUFDSU5KbVVxZXFHU1lBQUFCZ0FsVk5hZWxEYUFCUDd2bkhGNE15UmhqbnlLZzI0dHNBOGtiRi1n|95bbdb4432e224e79064443d49e9cdf1ddb3a5c792dba2a7c01432efa3c0f053',
}

headers = {
    'accept': '*/*',
    'accept-language': 'zh-CN,zh;q=0.9',
    'cache-control': 'no-cache',
    # 'cookie': '_xsrf=DQVufhanILJdfZWMVMbyrENS3kPL9aXk; __zse_ck=004_0B6eYxg1/bT5cyjfFvmq46=BkLMjysCu2lSFLb/2dwxHfEJspUNoMHX7xUEvcWcaRLhOEu6SLiLvwoum5/ST03TNa8QA=RZjpRUdM1Au4tqaFqMFQUvVhxyew=dgo5oo-oSCKRcE1qyPN4GFWqR/gpR8Z6luuYYcYcbRnFmu8KQAeIciW5eR3wxA3Jl3+VhqAZ5XvbmYov/2Xp7LHNA6sx6BXBLuCXfyZn3yMXTrMN54WKWDaE1E1+iNCqgJ1VuWY; _zap=8f4ff2bb-f7db-4b72-b57d-d4404fc93b52; BEC=6bca8f185b99e85d761c7a0d8d692864; d_c0=AiDSZlKnqhmPTkcBWpDZ93D74yCHxszDhHY=|1733729098; Hm_lvt_98beee57fd2ef70ccdd5ca52b9740c49=1733729098; HMACCOUNT=1289033A38EBF125; SESSIONID=k4oCgaolPWBjadUYoystKiSQDucI56P3Q09Jd6yk16D; JOID=UlgcBU7F002t0HkeZcK2FhOO2LF1ru4t7bIYeAaQhAbIshhLNYdOF8zVcBhpGLsOJkzQoqfyIxNgla1N6J9_2LA=; osd=Vl4WB0_B1Uev0X0Yb8C3EhWE2rBxqOQv7LYecgSRgADCsBlPM41MFsjTehpoHL0EJE3UpK3wIhdmn69M7Jl12rE=; captcha_session_v2=2|1:0|10:1733729100|18:captcha_session_v2|88:R2g2VHpnZ2VsZDlmOHZhSUd4MjI2OCtqWXp6UGdhR3VCRUxldUVtZXlubXVpTDQvREZYU2EzUTlFb0VvSityZw==|e4b62582771f3259bb339afc183ff085a7047ec9b4639077f857d904e0b1bbac; __snaker__id=XBpGOTRiTpoo013B; gdxidpyhxdE=rt%5CuMat3iznj%2B%2B0PcnvqK26RWlKeRbWZ%5CyJ5pYBzIrHr3XbwrZZoIn2TrxPwIT8A8O7NewNTp9X%2BuOZLIJHEXnAleqcR2M%2FRameLZuwm3SODjA%5CCkDDZCYPK4uX4bk3X1w%5C3ts0UYILP2v8kkkavW%2FxNg%5CfB7AAccg6gRtzSpar2ucm%2F%3A1733730000308; captcha_ticket_v2=2|1:0|10:1733729113|17:captcha_ticket_v2|728:eyJ2YWxpZGF0ZSI6IkNOMzFfUF9WTnJ1cUl3ZzBfSnRNQ3hhT2dQZTRjdHRnNDYzM1MqYTZhSFdFTW5ZTkpiam9JNFBta2czRmhoZFlxWDBpeUNMcmpyRmV4S1o5SkhQVlVHdTZDcFZoR0s4ZHY4dXpFZVgyTGRZNEpERk05V2NrdEllYnY2blBSSEpnRG4qVU4xdVBMS0lmY0RqOHZSbVF2NUVkSzFHY1lRdnBncEhnWlBlVTN4cGlkQnpUS1FGTG1BUDJ4S082VTlpd3ptSFF4ZTNjM3JXTDFLazhqYldWNkxCT2IzcmdZOUpTLkpCRFFQOGJxR1VxbGRDNDNtRXJGQjB1YmpwTndiZDhEOHFDckJCNUNWWkd1azFkdVQ1OV9hbmduZjhGRHJxY1Z6T0JrT0xSdzAzODZwQmZRbzlKd19zMm94Wkp3SnRyeTByVTl3VDBnUWp6WUhWOV9VSjZJSFpzZmpEVXQ0RnpHV3NLWkxDa2lMZUhPcGdERkJfM1hFSEd5dFdnYUg0ZGozNVh1VXJTRCoxOGQ2RUNfNU5ZRGhtU09wQmFVKmZzVXVMazBJMGUqM2kxWDF5MWJRd2ZnTWYqRk9aQURCa3ZKSi5aakNiY2NjUm5jUy5LTjFjOEFDTypCc1o5MEZUVS5FaFRTNHowXyppYllIVEw2UXQzSmFodFdCTktPdDFncHRHakNTNXpDOU03N192X2lfMSJ9|194db6c43b94159a14d04b4f1e027ef7dede02da8a056f229cb5b18274bd201f; z_c0=2|1:0|10:1733729129|4:z_c0|92:Mi4xMmV0TlRRQUFBQUFDSU5KbVVxZXFHU1lBQUFCZ0FsVk5hZWxEYUFCUDd2bkhGNE15UmhqbnlLZzI0dHNBOGtiRi1n|95bbdb4432e224e79064443d49e9cdf1ddb3a5c792dba2a7c01432efa3c0f053; Hm_lpvt_98beee57fd2ef70ccdd5ca52b9740c49=1733729288',
    'pragma': 'no-cache',
    'priority': 'u=1, i',
    'referer': 'https://www.zhihu.com/search?type=content&q=%E6%AF%9B%E5%88%A9%E6%B3%95%E6%A1%88',
    'sec-ch-ua': '"Google Chrome";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'same-origin',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
    'x-api-version': '3.0.91',
    'x-app-za': 'OS=Web',
    'x-requested-with': 'fetch',
    'x-zse-93': '101_3_3.0',
    'x-zse-96': xZse96,
    'x-zst-81': xZst81,
}


response = requests.get('https://www.zhihu.com/api/v4/search_v3', params=params, cookies=cookies, headers=headers)
data = response.json().get("data")
for item in data:
    if (item['type'] == 'search_result'):
        print(f"title: {item['highlight']['title']}")
        print("-------------")
        print(f"description: {item['highlight']['description']}")
        print("-------------")
        print(f"content: {item['object']['content']}")
        print("===============")
