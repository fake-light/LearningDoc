"""
DeepSeek API 使用示例
=====================
展示如何使用封装好的DeepSeekClient

这个文件展示了多种使用方式
"""

from deepseek_client import DeepSeekClient
from config import get_config


def example_1_streaming_response():
    """示例1：流式响应（推荐用于长文本）"""
    print("=" * 60)
    print("示例1：流式响应")
    print("=" * 60)
    
    config = get_config()
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=True,  # 显示详细处理过程
    )
    
    prompt = "请写一个Python的hello world程序"
    print(f"\n用户输入: {prompt}\n")
    print("AI响应：")
    
    response = client.ask(prompt)
    for chunk in response:
        print(chunk, end="", flush=True)
    
    print("\n")


def example_2_blocking_response():
    """示例2：阻塞式响应（获取完整响应）"""
    print("=" * 60)
    print("示例2：阻塞式响应")
    print("=" * 60)
    
    config = get_config()
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=False,
    )
    
    prompt = "什么是机器学习？"
    print(f"\n用户输入: {prompt}\n")
    
    response = client.ask_blocking(prompt)
    print("AI响应：")
    print(response)
    print()


def example_3_multiple_prompts():
    """示例3：连续多个提示"""
    print("=" * 60)
    print("示例3：连续多个提示")
    print("=" * 60)
    
    config = get_config()
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=False,
    )
    
    prompts = [
        "请用一句话解释什么是AI",
        "那深度学习呢？",
        "神经网络的基本原理是什么？",
    ]
    
    for i, prompt in enumerate(prompts, 1):
        print(f"\n{'=' * 60}")
        print(f"第 {i} 个提示: {prompt}")
        print(f"{'=' * 60}")
        
        response = client.ask_blocking(prompt)
        print(f"响应: {response}\n")


def example_4_error_handling():
    """示例4：错误处理"""
    print("=" * 60)
    print("示例4：错误处理")
    print("=" * 60)
    
    config = get_config()
    
    # 故意使用无效的配置来演示错误处理
    config_invalid = config.copy()
    config_invalid['headers']['authorization'] = 'Bearer invalid_token'
    
    client = DeepSeekClient(
        cookies=config_invalid['cookies'],
        headers=config_invalid['headers'],
        chat_session_id=config_invalid['chat_session_id'],
        verbose=True,
    )
    
    prompt = "测试错误处理"
    print(f"\n用户输入: {prompt}\n")
    print("AI响应：")
    
    response = client.ask(prompt)
    for chunk in response:
        print(chunk, end="", flush=True)
    
    print("\n")


def example_5_custom_client_creation():
    """示例5：创建自定义客户端"""
    print("=" * 60)
    print("示例5：自定义客户端配置")
    print("=" * 60)
    
    # 直接创建客户端而不使用get_config
    client = DeepSeekClient(
        cookies={
            'HWWAFSESID': 'your_id',
            'HWWAFSESTIME': 'your_time',
            'ds_session_id': 'your_session',
        },
        headers={
            'authorization': 'Bearer your_token',
            'content-type': 'application/json',
            # ... 其他headers
        },
        chat_session_id='your_chat_session_id',
        model_type='default',
        verbose=True,
    )
    
    prompt = "测试"
    print(f"\n用户输入: {prompt}\n")
    
    try:
        response = client.ask(prompt)
        for chunk in response:
            print(chunk, end="", flush=True)
    except Exception as e:
        print(f"错误: {e}")
    
    print("\n")


if __name__ == "__main__":
    import sys
    
    print("\nDeepSeek API 使用示例")
    print("=" * 60)
    print("\n可选的示例：")
    print("  1. 流式响应")
    print("  2. 阻塞式响应")
    print("  3. 连续多个提示")
    print("  4. 错误处理")
    print("  5. 自定义客户端")
    print("\n提示：请先在 config.py 中填入您的认证信息")
    print("=" * 60)
    
    if len(sys.argv) > 1:
        choice = sys.argv[1]
        
        examples = {
            '1': example_1_streaming_response,
            '2': example_2_blocking_response,
            '3': example_3_multiple_prompts,
            '4': example_4_error_handling,
            '5': example_5_custom_client_creation,
        }
        
        if choice in examples:
            try:
                examples[choice]()
            except Exception as e:
                print(f"执行示例时出错: {e}")
                import traceback
                traceback.print_exc()
        else:
            print(f"不支持的示例: {choice}")
    else:
        print("\n使用方式: python example.py <示例号>")
        print("例如: python example.py 1")
