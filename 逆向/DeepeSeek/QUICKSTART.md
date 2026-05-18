# 🚀 快速开始指南

## 5分钟快速上手 DeepSeek API 客户端

### 第一步：配置认证信息 (2分钟)

编辑 `config.py`，在 `DEEPSEEK_CONFIG` 字典中填入你的认证信息：

```python
DEEPSEEK_CONFIG = {
    'cookies': {
        'HWWAFSESID': 'your_value_here',           # ← 从浏览器获取
        'HWWAFSESTIME': 'your_value_here',         # ← 从浏览器获取
        'ds_session_id': 'your_value_here',        # ← 从浏览器获取
    },
    'headers': {
        'authorization': 'Bearer YOUR_TOKEN_HERE', # ← 从浏览器获取
        # ... 其他headers保持不变
    },
    'chat_session_id': 'YOUR_SESSION_ID_HERE',    # ← 从浏览器获取
    'verbose': True,  # 改为 False 关闭详细日志
}
```

**如何获取这些值？**

1. 打开 https://chat.deepseek.com
2. 按 `F12` 打开开发者工具
3. 进入 `Application` → `Cookies`
4. 复制相应的值
5. 在 `Network` 标签页中查看 Headers 获取 `authorization`

### 第二步：选择使用方式 (3分钟)

#### 方式 A：流式响应（推荐）✨

```python
from deepseek_client import DeepSeekClient
from config import get_config

config = get_config()
client = DeepSeekClient(
    cookies=config['cookies'],
    headers=config['headers'],
    chat_session_id=config['chat_session_id'],
)

# 实时输出
print("DeepSeek: ", end="", flush=True)
for chunk in client.ask("你好"):
    print(chunk, end="", flush=True)
print()  # 换行
```

**优点：** 字符流畅输出，实时看到回复

#### 方式 B：完整响应

```python
response = client.ask_blocking("什么是AI？")
print(response)
```

**优点：** 简单直接，适合处理完整结果

#### 方式 C：交互式聊天

```bash
python main_new.py interactive
```

然后就可以在终端中实时对话了！

---

## 🎯 常用示例

### 示例1：简单提问

```python
from deepseek_client import DeepSeekClient
from config import get_config

config = get_config()
client = DeepSeekClient(**{
    'cookies': config['cookies'],
    'headers': config['headers'],
    'chat_session_id': config['chat_session_id'],
})

answer = client.ask_blocking("2+2等于多少？")
print(answer)
```

### 示例2：长文本生成

```python
response = client.ask("写一个100行的Python程序：...")
for chunk in response:
    print(chunk, end="", flush=True)
```

### 示例3：代码解析

```python
code = """
def hello():
    print("Hello, World!")
"""
prompt = f"请解释这段代码:\n{code}"
response = client.ask_blocking(prompt)
print(response)
```

### 示例4：一次性问多个问题

```python
questions = [
    "什么是Python？",
    "Python有什么优点？",
    "如何学习Python？",
]

for q in questions:
    print(f"\n问: {q}")
    ans = client.ask_blocking(q)
    print(f"答: {ans}")
```

---

## 🔍 测试你的设置

运行测试确保一切正常：

```bash
python test_client.py
```

如果所有测试都通过，说明配置正确！

---

## 💡 常见问题

### Q: 如何启用/禁用详细日志？

A: 在创建客户端时设置 `verbose` 参数：

```python
# 启用详细日志
client = DeepSeekClient(..., verbose=True)

# 禁用详细日志
client = DeepSeekClient(..., verbose=False)
```

### Q: 如何处理网络错误？

A: 使用 try-except：

```python
try:
    response = client.ask("你好")
    for chunk in response:
        print(chunk, end="", flush=True)
except Exception as e:
    print(f"错误: {e}")
```

### Q: 一次要处理很多提示怎么办？

A: 创建循环处理：

```python
prompts = ["问题1", "问题2", "问题3"]
for prompt in prompts:
    response = client.ask_blocking(prompt)
    print(response)
    print("-" * 50)
```

### Q: 认证过期怎么办？

A: 重新从浏览器获取最新的认证信息，更新 `config.py`

### Q: 可以同时发送多个请求吗？

A: 可以，创建多个客户端实例：

```python
client1 = DeepSeekClient(...)
client2 = DeepSeekClient(...)

# 可以同时使用
response1 = client1.ask("问题1")
response2 = client2.ask("问题2")
```

---

## 📊 项目结构说明

```
DeepeSeek/
├── deepseek_client.py  ← 核心客户端（不需要改）
├── config.py           ← 配置文件（需要填入认证信息）
├── main_new.py         ← 简化使用脚本（可以直接运行）
├── example.py          ← 详细示例代码
├── test_client.py      ← 单元测试
└── README.md           ← 完整文档
```

**你需要修改的：**
- ✏️ `config.py` - 填入认证信息

**你可以运行的：**
- 🏃 `python main_new.py` - 基础演示
- 🏃 `python main_new.py interactive` - 交互模式
- 🏃 `python example.py <编号>` - 运行示例
- 🏃 `python test_client.py` - 运行测试

**你可以导入的：**
- 📦 `from deepseek_client import DeepSeekClient`
- 📦 `from config import get_config`

---

## ⚡ 性能提示

1. **流式响应更快** - 使用 `client.ask()` 而非 `ask_blocking()`
2. **重用客户端** - 创建一次后反复使用，不要每次都创建新实例
3. **批量处理** - 如果有多个请求，保持客户端连接不断开

---

## 🆘 如果出错了

1. **检查认证信息** - 确保 `config.py` 中的值正确
2. **启用详细日志** - 设置 `verbose=True` 查看发生了什么
3. **运行测试** - `python test_client.py` 诊断问题
4. **检查网络** - 确保能访问 `https://chat.deepseek.com`

---

## 🎉 就这样！

你现在已经可以使用 DeepSeek API 了！

下一步可以：
- 📖 阅读 `README.md` 了解更多功能
- 📚 查看 `example.py` 学习高级用法
- 🧪 运行 `test_client.py` 验证环境
- 🚀 开始构建你的应用！

---

**祝你使用愉快！** 🎊
