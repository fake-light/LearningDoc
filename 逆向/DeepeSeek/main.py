### 1、调用create_pow_challenge接口，获取一下内容,示例在create_pow_challenge.py中：
{
  "algorithm": "DeepSeekHashV1",
  "challenge": "cdfaabb6fc2cbe30f3dc1ded3ad05720c2a9e446d02f94f79edcce2f48f45118",
  "salt": "2059882febd599636a31",
  "signature": "bf01aa53c253a08d15e87917dc19da4f514ea5448a219cb9f86c822eac19aeb4",
  "difficulty": 144000,
  "expire_at": 1778831547377,
  "expire_after": 300000,
  "target_path": "/api/v0/chat/completion"
}

### 2、使用salt、expire_at、salt和challenge，调用crete_pow中的solve_pow函数得到answer值

### 3、结果整理为以下结构, 并且使用JSON.stringify转换为json字符串，并且对字符串进行Base64编码：
{
    "algorithm": "",
    "challenge": "",
    "salt": "",
    "answer": "",
    "signature": "",
    "target_path": "/api/v0/chat/completion"
}

### 4、将上一步得到的字符串，放入请求头x-ds-pow-response中，调用接口/api/v0/chat/completion，获取结果，请求示例在completion_request.py中,结果为流式传输，在屏幕中打印出结果。

### 5、将以上步骤进行封装，最终的效果为输入一个prompt字符串，输出为接口返回的结果字符串。