# DeepSeek API 客户端封装

## 📋 项目概述

这是一个完整的 DeepSeek API 客户端封装，将原始的多步骤流程简化为简洁的 Python API。

### 原始流程（7步）❌
```
1. 调用 create_pow_challenge 接口
2. 调用 solve_pow 函数解决 POW challenge
3. 构建 JSON 结构
4. Base64 编码
5. 添加到请求头
6. 调用 completion API
7. 解析流式响应
```

### 新流程（1行代码）✅
```python
from deepseek_client import DeepSeekClient

client = DeepSeekClient(cookies, headers, chat_session_id)
response = client.ask("你的提示")
```

---

## 📁 文件结构

```
DeepeSeek/
├── deepseek_client.py       # ⭐ 核心客户端封装
├── config.py                # ⭐ 配置管理
├── main_new.py              # ⭐ 简化后的使用脚本
├── example.py               # ⭐ 完整的使用示例
├── main.py                  # 原始文档（说明流程）
├── create_pow.py            # POW求解器（被deepseek_client调用）
├── create_pow_challenge.py  # POW challenge获取（参考）
├── completion_requesst.py   # API请求示例（参考）
└── README.md                # 本文件
```

---

## 🚀 快速开始

### 1. 配置认证信息

编辑 `config.py`，填入你的认证信息：

```python
DEEPSEEK_CONFIG = {
    'cookies': {
        'HWWAFSESID': 'your_value',
        'HWWAFSESTIME': 'your_value',
        'ds_session_id': 'your_value',
    },
    'headers': {
        'authorization': 'Bearer your_token',
        # ... 其他headers
    },
    'chat_session_id': 'your_chat_session_id',
}
```

### 2. 最简使用

```python
from deepseek_client import DeepSeekClient
from config import get_config

# 加载配置
config = get_config()

# 创建客户端
client = DeepSeekClient(
    cookies=config['cookies'],
    headers=config['headers'],
    chat_session_id=config['chat_session_id'],
)

# 发送提示并获取响应
response = client.ask("你好")
for chunk in response:
    print(chunk, end="", flush=True)
```

---

## 💡 使用方式

### 方式1：流式响应（推荐用于长文本）

```python
client = DeepSeekClient(cookies, headers, chat_session_id)
response = client.ask("写一篇文章")

for chunk in response:
    print(chunk, end="", flush=True)  # 实时打印
```

**优点：** 
- 实时显示响应
- 内存占用少
- 用户体验好

### 方式2：阻塞式响应（获取完整结果）

```python
response = client.ask_blocking("2+2等于多少？")
print(response)  # 输出完整响应
```

**优点：**
- 简单直接
- 适合后续处理
- 便于测试

### 方式3：交互式对话

运行简化的 main_new.py：

```bash
python main_new.py interactive
```

然后在终端中实时对话：
```
你: 你好
DeepSeek: 你好！我是DeepSeek...
你: 再讲一点
DeepSeek: ...
```

---

## 📚 API 文档

### DeepSeekClient 类

#### 初始化参数

```python
client = DeepSeekClient(
    cookies: Dict[str, str],        # 请求 cookies
    headers: Dict[str, str],        # 请求 headers（不含 POW 响应）
    chat_session_id: str,           # 会话 ID
    model_type: str = "default",    # 模型类型
    verbose: bool = False,          # 是否输出详细日志
)
```

#### 主要方法

##### `ask(prompt, parent_message_id=None) -> Generator[str]`

发送提示并获取流式响应。

**参数：**
- `prompt` (str): 用户输入的提示
- `parent_message_id` (str, optional): 父消息ID（用于多轮对话）

**返回：** 文本片段生成器

**例子：**
```python
response = client.ask("讲个笑话")
for chunk in response:
    print(chunk, end="", flush=True)
```

##### `ask_blocking(prompt, parent_message_id=None) -> str`

发送提示并获取完整响应（阻塞式）。

**参数：** 同 `ask()`

**返回：** 完整的响应文本字符串

**例子：**
```python
result = client.ask_blocking("今天天气如何？")
print(result)
```

#### 内部方法

这些方法在 `ask()` 中自动调用，通常无需手动调用：

- `_get_pow_challenge()`: 获取 POW challenge
- `_solve_pow_challenge()`: 解决 POW challenge
- `_build_pow_response()`: 构建并编码 POW 响应
- `_make_completion_request()`: 调用 completion API

---

## ⚙️ 配置管理

### 配置来源优先级

1. **环境变量** (highest)
2. **配置文件** (JSON)
3. **内置默认配置** (lowest)

### 从环境变量加载

```python
from config import load_config_from_env

config = load_config_from_env()
```

期望的环境变量：
- `DEEPSEEK_COOKIES`: JSON 格式的 cookies
- `DEEPSEEK_AUTH_TOKEN`: 认证 token
- `DEEPSEEK_CHAT_SESSION_ID`: 会话 ID

### 从文件加载

```python
from config import load_config_from_file

config = load_config_from_file('path/to/config.json')
```

### 保存配置到文件

```python
from config import save_config_to_file

config = {...}
save_config_to_file(config, 'config.json')
```

---

## 🔍 详细工作流程

### 内部自动化流程

当调用 `client.ask(prompt)` 时：

```
1. 获取 POW Challenge
   ├─ POST /api/v0/chat/create_pow_challenge
   └─ 返回: {algorithm, challenge, salt, ...}

2. 解决 POW Challenge
   ├─ 调用 create_pow.solve_pow()
   └─ 返回: nonce (answer)

3. 构建 POW 响应
   ├─ 构建 JSON: {algorithm, challenge, salt, answer, signature, target_path}
   ├─ JSON.stringify
   └─ Base64 编码

4. 发送 Completion 请求
   ├─ 添加 x-ds-pow-response header
   ├─ POST /api/v0/chat/completion
   └─ stream=True

5. 处理流式响应
   ├─ 逐行读取
   ├─ JSON 解析
   └─ yield 文本片段
```

---

## 📊 性能特点

| 功能 | 特点 |
|------|------|
| POW 求解 | C 实现（~500k nonces/sec），Python 降级（~2500 nonces/sec） |
| 流式响应 | 实时流式，无内存缓冲 |
| 并发支持 | 每个客户端实例独立，可创建多个实例并发 |
| 错误处理 | 自动降级和异常捕获 |

---

## 🐛 常见问题

### Q1: 如何获取认证信息？

A: 从浏览器中：
1. 打开 https://chat.deepseek.com
2. 打开开发者工具 (F12)
3. 进入 Network 标签页，发送一条消息
4. 在网络请求中查看 Cookies 和 Headers

### Q2: 可以多轮对话吗？

A: 当前实现不支持自动多轮对话追踪。可通过：
```python
# 手动传递 parent_message_id
response1 = client.ask("第一个问题")
response2 = client.ask("第二个问题", parent_message_id="...")
```

### Q3: 如何处理长时间的请求？

A: 使用流式响应和设置适当的超时：
```python
for chunk in client.ask(prompt):
    print(chunk, end="", flush=True)
```

### Q4: 如何调试问题？

A: 启用 verbose 模式查看详细日志：
```python
client = DeepSeekClient(..., verbose=True)
```

---

## 📈 改进总结

### 代码行数对比

| 操作 | 原始代码 | 新代码 | 减少 |
|------|--------|--------|------|
| 完整流程 | 50-60 行 | 5-10 行 | 80% |
| 配置管理 | 分散 | 集中 | - |
| 错误处理 | 手动 | 自动 | - |
| 代码复用 | 差 | 优 | - |

### 功能改进

✅ 自动处理 POW 认证  
✅ 统一的 API 接口  
✅ 流式和阻塞式双支持  
✅ 配置管理集中化  
✅ 内置错误处理  
✅ 详细日志输出  
✅ 生产级别代码质量  

---

## 📝 示例代码

详见 `example.py` 和 `main_new.py`

### 快速运行示例

```bash
# 运行示例
python example.py 1          # 流式响应示例
python example.py 2          # 阻塞式响应示例
python example.py 3          # 连续提示示例

# 交互式聊天
python main_new.py interactive
```

---

## 🔐 安全建议

1. ⚠️ **不要在代码中硬编码认证信息**
   - 使用环境变量或配置文件
   - 将认证文件加入 .gitignore

2. ⚠️ **保护你的 Token**
   - 定期更新
   - 在公开场合不要暴露

3. ✅ 使用配置管理来隔离敏感信息

---

## 📄 许可证

此项目仅供学习和研究之用。

---

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

## 📞 技术支持

如有问题，请检查：
1. 认证信息是否正确
2. 网络连接是否正常
3. API 端点是否可访问
4. 启用 verbose 模式查看详细日志

---

**最后更新:** 2024年
**版本:** 1.0
