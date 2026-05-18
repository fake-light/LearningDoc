"""
DeepSeek API 配置管理
======================
管理认证信息和API配置

使用方式：
1. 在此文件中填入你的credentials
2. 在其他文件中导入并使用
"""

import json
import os
from typing import Dict, Any

# 配置模板 - 请填入你的实际值
DEEPSEEK_CONFIG = {
    'cookies': {
        'HWWAFSESID': 'b2b9b167281830edfc67',
        'HWWAFSESTIME': '1778825133647',
        'ds_session_id': '0f7cb956-7a98-4698-9a3e-8eb003484f46',
    },
    'headers': {
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
        'x-hif-leim': 'tkzsZtj2rrE8ZZAkx2ZiDPsaCe39m+TAo3IFdzDotmYlkKU0QC6W/JU=.h8LD/QzD6dYk/g/l'
    },
    'chat_session_id': '5547d155-3cbc-4a0a-9943-1bffe7ffed4b',
    'model_type': 'default',
    'verbose': False,  # 设置为True可以看到详细的处理过程
}


def load_config_from_env() -> Dict[str, Any]:
    """
    从环境变量加载配置
    
    期望的环境变量：
    - DEEPSEEK_COOKIES: JSON格式的cookies
    - DEEPSEEK_AUTH_TOKEN: 认证token
    - DEEPSEEK_CHAT_SESSION_ID: 会话ID
    """
    try:
        cookies_json = os.getenv('DEEPSEEK_COOKIES', '{}')
        cookies = json.loads(cookies_json) if cookies_json else {}
        
        auth_token = os.getenv('DEEPSEEK_AUTH_TOKEN', '')
        chat_session_id = os.getenv('DEEPSEEK_CHAT_SESSION_ID', '')
        
        if cookies and auth_token and chat_session_id:
            config = DEEPSEEK_CONFIG.copy()
            config['cookies'] = cookies
            config['headers']['authorization'] = f'Bearer {auth_token}'
            config['chat_session_id'] = chat_session_id
            return config
    except Exception as e:
        print(f"警告：无法从环境变量加载配置: {e}")
    
    return DEEPSEEK_CONFIG


def load_config_from_file(filepath: str) -> Dict[str, Any]:
    """
    从JSON文件加载配置
    
    文件格式应为：
    {
        "cookies": {...},
        "headers": {...},
        "chat_session_id": "...",
        ...
    }
    """
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return json.load(f)
    except Exception as e:
        print(f"警告：无法从文件加载配置 {filepath}: {e}")
        return DEEPSEEK_CONFIG


def save_config_to_file(config: Dict[str, Any], filepath: str) -> None:
    """保存配置到JSON文件"""
    try:
        os.makedirs(os.path.dirname(filepath), exist_ok=True)
        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(config, f, indent=2, ensure_ascii=False)
        print(f"配置已保存到: {filepath}")
    except Exception as e:
        print(f"警告：无法保存配置到文件 {filepath}: {e}")


def get_config(
    use_env: bool = False,
    config_file: str = None,
) -> Dict[str, Any]:
    """
    获取配置的便利函数
    
    Parameters:
    -----------
    use_env : bool
        是否从环境变量加载
    config_file : str, optional
        配置文件路径
    
    Returns:
    --------
    dict : DeepSeek配置
    """
    if use_env:
        return load_config_from_env()
    elif config_file and os.path.exists(config_file):
        return load_config_from_file(config_file)
    else:
        return DEEPSEEK_CONFIG


if __name__ == "__main__":
    # 输出默认配置作为参考
    print("默认配置模板：")
    print(json.dumps(DEEPSEEK_CONFIG, indent=2, ensure_ascii=False))
    
    # 示例：保存配置
    # save_config_to_file(DEEPSEEK_CONFIG, 'config.json')
