"""
DeepSeek API 客户端封装
========================
统一的API客户端，处理POW认证、请求签名和流式响应

Usage:
    from deepseek_client import DeepSeekClient
    
    client = DeepSeekClient(
        cookies={...},
        headers={...},
        chat_session_id="your-session-id",
    )
    
    response = client.ask("你好")
    for chunk in response:
        print(chunk, end="", flush=True)
"""

import requests
import json
import base64
import time
from typing import Dict, Optional, Generator, Any
from create_pow import solve_pow


class DeepSeekClient:
    """DeepSeek API 客户端，处理POW认证和API调用"""
    
    API_BASE = "https://chat.deepseek.com"
    
    def __init__(
        self,
        cookies: Dict[str, str],
        headers: Dict[str, str],
        chat_session_id: str,
        model_type: str = "default",
        verbose: bool = False,
    ):
        """
        初始化DeepSeekClient
        
        Parameters:
        -----------
        cookies : dict
            请求cookies
        headers : dict
            请求headers（不包含x-ds-pow-response）
        chat_session_id : str
            聊天会话ID
        model_type : str
            模型类型，默认为"default"
        verbose : bool
            是否输出详细信息
        """
        self.cookies = cookies
        self.headers = headers.copy()  # 复制以避免修改原始headers
        self.chat_session_id = chat_session_id
        self.model_type = model_type
        self.verbose = verbose
    
    def _get_pow_challenge(self) -> Dict[str, Any]:
        """
        步骤1：获取POW challenge
        
        Returns:
        --------
        dict : 包含challenge数据的字典
        """
        if self.verbose:
            print("[*] 获取POW challenge...")
        
        url = f"{self.API_BASE}/api/v0/chat/create_pow_challenge"
        json_data = {
            'target_path': '/api/v0/chat/completion',
        }
        
        response = requests.post(
            url,
            cookies=self.cookies,
            headers=self.headers,
            json=json_data,
        )
        
        response_data = response.json()
        challenge_data = response_data['data']['biz_data']['challenge']
        
        if self.verbose:
            print(f"[+] Challenge获取成功: {challenge_data}")
            print(f"    Algorithm: {challenge_data['algorithm']}")
            print(f"    Difficulty: {challenge_data['difficulty']}")
        
        return challenge_data
    
    def _solve_pow_challenge(self, challenge_data: Dict[str, Any]) -> int:
        """
        步骤2：解决POW challenge
        
        Parameters:
        -----------
        challenge_data : dict
            从_get_pow_challenge返回的数据
        
        Returns:
        --------
        int : 计算出的answer（nonce）
        """
        if self.verbose:
            print("[*] 解决POW challenge...")
        
        nonce = solve_pow(
            challenge=challenge_data['challenge'],
            salt=challenge_data['salt'],
            difficulty=challenge_data['difficulty'],
            expire_at=str(challenge_data['expire_at']),
            use_c=True,
            verbose=self.verbose,
        )
        
        if nonce is None:
            raise RuntimeError("未能解决POW challenge")
        
        return nonce
    
    def _build_pow_response(
        self,
        challenge_data: Dict[str, Any],
        answer: int,
    ) -> str:
        """
        步骤3：构建POW响应并进行Base64编码
        
        Parameters:
        -----------
        challenge_data : dict
            从_get_pow_challenge返回的数据
        answer : int
            POW challenge的答案
        
        Returns:
        --------
        str : Base64编码的POW响应
        """
        if self.verbose:
            print("[*] 构建POW响应...")
        
        pow_response = {
            "algorithm": challenge_data["algorithm"],
            "challenge": challenge_data["challenge"],
            "salt": challenge_data["salt"],
            "answer": answer,
            "signature": challenge_data["signature"],
            "target_path": "/api/v0/chat/completion",
        }
        
        # 转换为JSON字符串并Base64编码
        json_str = json.dumps(pow_response)
        encoded = base64.b64encode(json_str.encode()).decode()
        
        if self.verbose:
            print(f"[+] POW响应构建完成（长度: {len(encoded)}）")
        
        return encoded
    
    def _make_completion_request(
        self,
        prompt: str,
        pow_response: str,
        parent_message_id: Optional[str] = None,
    ) -> Generator[str, None, None]:
        """
        步骤4：调用completion API并处理流式响应
        
        Parameters:
        -----------
        prompt : str
            用户输入的提示
        pow_response : str
            Base64编码的POW响应
        parent_message_id : str, optional
            父消息ID（用于多轮对话）
        
        Yields:
        -------
        str : 流式响应的文本片段
        """
        if self.verbose:
            print("[*] 发送completion请求...")
        
        # 准备headers，包含POW响应
        headers = self.headers.copy()
        headers['x-ds-pow-response'] = pow_response
        
        url = f"{self.API_BASE}/api/v0/chat/completion"
        json_data = {
            'chat_session_id': self.chat_session_id,
            'parent_message_id': parent_message_id,
            'model_type': self.model_type,
            'prompt': prompt,
            'ref_file_ids': [],
            'thinking_enabled': False,
            'search_enabled': True,
            'preempt': False,
        }
        
        response = requests.post(
            url,
            cookies=self.cookies,
            headers=headers,
            json=json_data,
            stream=True,
        )
        
        if self.verbose:
            print(f"[+] 收到响应 (Status: {response.status_code})")
        
        response.raise_for_status()
        
        # 处理流式响应
        for line in response.iter_lines():
            if line:
                try:
                    # 去除可能的前缀 data:
                    if line.startswith(b'data:'):
                        line = line[5:]
                    
                    if line.strip():
                        data = json.loads(line)
                        if 'data' in data and 'message' in data['data']:
                            content = data['data']['message']['content']
                            if content:
                                yield content
                except json.JSONDecodeError:
                    # 忽略非JSON行
                    pass
    
    def ask(self, prompt: str, parent_message_id: Optional[str] = None) -> Generator[str, None, None]:
        """
        主入口方法：发送提示并获取流式响应
        
        Parameters:
        -----------
        prompt : str
            用户输入的提示
        parent_message_id : str, optional
            父消息ID（用于多轮对话）
        
        Yields:
        -------
        str : API返回的流式文本片段
        
        Example:
        --------
        client = DeepSeekClient(...)
        response = client.ask("你好")
        for chunk in response:
            print(chunk, end="", flush=True)
        """
        try:
            # 步骤1：获取POW challenge
            challenge_data = self._get_pow_challenge()
            
            # 步骤2：解决POW challenge
            answer = self._solve_pow_challenge(challenge_data)
            
            # 步骤3：构建POW响应
            pow_response = self._build_pow_response(challenge_data, answer)
            
            # 步骤4：调用completion API并处理流式响应
            yield from self._make_completion_request(prompt, pow_response, parent_message_id)
            
        except Exception as e:
            error_msg = f"[!] 错误: {str(e)}"
            if self.verbose:
                print(error_msg)
            yield error_msg
    
    def ask_blocking(self, prompt: str, parent_message_id: Optional[str] = None) -> str:
        """
        同步方法：发送提示并获取完整响应
        
        Parameters:
        -----------
        prompt : str
            用户输入的提示
        parent_message_id : str, optional
            父消息ID（用于多轮对话）
        
        Returns:
        --------
        str : API返回的完整响应文本
        
        Example:
        --------
        client = DeepSeekClient(...)
        response = client.ask_blocking("你好")
        print(response)
        """
        result = []
        for chunk in self.ask(prompt, parent_message_id):
            result.append(chunk)
        return ''.join(result)


# 配置管理类
class DeepSeekConfig:
    """管理DeepSeek客户端的配置"""
    
    @staticmethod
    def create_from_dict(config_dict: Dict[str, Any]) -> DeepSeekClient:
        """
        从配置字典创建DeepSeekClient
        
        Parameters:
        -----------
        config_dict : dict
            包含以下键的配置字典：
            - cookies: dict
            - headers: dict
            - chat_session_id: str
            - model_type: str (optional)
            - verbose: bool (optional)
        
        Returns:
        --------
        DeepSeekClient : 配置好的客户端实例
        """
        return DeepSeekClient(
            cookies=config_dict.get('cookies', {}),
            headers=config_dict.get('headers', {}),
            chat_session_id=config_dict['chat_session_id'],
            model_type=config_dict.get('model_type', 'default'),
            verbose=config_dict.get('verbose', False),
        )


if __name__ == "__main__":
    # 示例使用
    from create_pow_challenge import get_challenge_example
    
    # 配置信息
    config = {
        'cookies': {
            'HWWAFSESID': 'b2b9b167281830edfc67',
            'HWWAFSESTIME': '1778825133647',
            'ds_session_id': 'a8a49aaaa3fa4450a95a2380b27a595f',
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
        },
        'chat_session_id': '0f7cb956-7a98-4698-9a3e-8eb003484f46',
        'verbose': True,
    }
    
    # 创建客户端
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=config['verbose'],
    )
    
    # 使用示例1：流式响应
    print("=== 流式响应示例 ===")
    response = client.ask("你好，请介绍一下你自己")
    for chunk in response:
        print(chunk, end="", flush=True)
    print("\n")
    
    # 使用示例2：阻塞式响应
    print("\n=== 阻塞式响应示例 ===")
    full_response = client.ask_blocking("2+2等于多少？")
    print(full_response)
