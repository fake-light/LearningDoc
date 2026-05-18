"""
DeepSeek API 简化版使用脚本
===========================

改进的main.py：使用新的deepseek_client封装
相比原始流程，代码更简洁、更易维护

主要改进：
1. 自动处理POW认证流程
2. 统一的API调用接口
3. 支持流式和阻塞式响应
4. 更好的错误处理和日志输出
"""

from deepseek_client import DeepSeekClient
from config import get_config


def main():
    """主函数：演示简化后的使用流程"""
    
    # 步骤1：加载配置（从config.py获取）
    config = get_config()
    
    # 步骤2：创建客户端
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=True,  # 显示处理过程
    )
    
    # 步骤3：发送提示并获取响应
    # 
    # 原始流程需要：
    # 1. 调用create_pow_challenge接口
    # 2. 调用solve_pow函数
    # 3. 构建JSON并Base64编码
    # 4. 手动添加headers
    # 5. 调用completion接口
    # 6. 解析流式响应
    #
    # 新流程只需一行代码！
    
    prompt = "你好，请介绍一下DeepSeek"
    print(f"\n发送提示: {prompt}\n")
    
    # 方法1：流式响应（推荐）
    print("=" * 60)
    print("流式响应：")
    print("=" * 60)
    response = client.ask(prompt)
    for chunk in response:
        print(chunk, end="", flush=True)
    print("\n")
    
    # 方法2：阻塞式获取完整响应
    # print("\n" + "=" * 60)
    # print("阻塞式响应（完整）：")
    # print("=" * 60)
    # prompt2 = "什么是机器学习？"
    # response = client.ask_blocking(prompt2)
    # print(f"\nQ: {prompt2}")
    # print(f"A: {response}\n")


def interactive_chat():
    """交互式聊天模式"""
    print("DeepSeek API 交互式聊天")
    print("=" * 60)
    print("输入 'quit' 或 'exit' 退出")
    print("=" * 60 + "\n")
    
    config = get_config()
    client = DeepSeekClient(
        cookies=config['cookies'],
        headers=config['headers'],
        chat_session_id=config['chat_session_id'],
        verbose=False,
    )
    
    while True:
        try:
            prompt = input("\n你: ").strip()
            
            if not prompt:
                continue
            
            if prompt.lower() in ('quit', 'exit', 'q'):
                print("再见！")
                break
            
            print("\nDeepSeek: ", end="", flush=True)
            response = client.ask(prompt)
            for chunk in response:
                print(chunk, end="", flush=True)
            print("\n")
            
        except KeyboardInterrupt:
            print("\n\n再见！")
            break
        except Exception as e:
            print(f"错误: {e}")
            continue


if __name__ == "__main__":
    import sys
    
    if len(sys.argv) > 1 and sys.argv[1] == 'interactive':
        interactive_chat()
    else:
        main()
    
    print("\n提示：使用 'python main.py interactive' 进入交互模式")
