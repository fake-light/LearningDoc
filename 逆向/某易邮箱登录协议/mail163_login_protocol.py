from gmssl.sm4 import CryptSM4, SM4_ENCRYPT, SM4_DECRYPT
import binascii
import random
from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_v1_5
from base64 import b64encode, b64decode
import requests
import json


class Mail163LoginProtocol:
    common_data = {
        "channel": 0,
        "pd": "mail163",
        "pkid": "CvViHzl",
        "topURL": "https://mail.163.com/"
    }
    un = "lgxpsy@163.com"
    sm4_encrypt_key = "BC60B8B9E4FFEFFA219E5AD77F11F9E2"
    pub_key_file = "rsa_pub_key.pem"
    username = ""
    pwd = ""
    pv_param_url = "https://dl.reg.163.com/dl/zj/mail/powGetP"
    tk_url = "https://dl.reg.163.com/dl/zj/mail/gt"
    login_url = "https://dl.reg.163.com/dl/zj/mail/l"

    def __init__(self, user, pwd):
        self.username = user
        self.common_data["un"] = user
        self.pwd = pwd

    """
        example_common_data = {
            "un": "lgxpsy@163.com",
            "pkid": "CvViHzl",
            "pd": "mail163",
            "channel": 0,
            "topURL": "https://mail.163.com/",
            "rtid": "Nx6M7m2KVWfihd6KvWkI3MTGL91byaj7"
        }
        example_login_data = {
            "un": "lgxpsy@163.com",
            "pw": "sBU+LCNamy87U0x+c8thxoNFchfqvtNQ5OA0vEWoh82ry5yxKNfrsDC4DcOfn9a/l12RHSyhQscvW3GahW2rJ2wCmB1dDvShN9w3Tx/xLKMx+UAQYJqJc/n1Q6XGl+UeDyY7yXCiWqkAzZiMyIcQ4Ws+lEJRTnWway7U+2J/u7E=",
            "pd": "mail163",
            "l": 0,
            "d": 30,
            "t": 1736046424287,
            "pkid": "CvViHzl",
            "domains": "",
            "tk": "37085c7e58549d83a3cb06c07d4df926",
            "pwdKeyUp": 1,
            "pVParam": {
                "puzzle": "Yg2SisUbVqdze/D+Arw96fCwMlGfI4pYAxc8pvCT0uAXHRBpgnveoOEmU7Tg+5Lk5FMIFrYaxRFz\r\nBqfj5pFwzPiVFIfUlyOfuu1upx3PVCLsXd4OdZ6jhIDK9n1uOOn4fafQpcc+8SiawMN+V0PxGfJ9\r\n8614QVgwqmVEL2hgbX9xl7BEgRN36V8Tfs0k1iP6Tv/5eWUdDNc882LQ35KFVjyNVBb1yQDwimYI\r\n+SnaDZH9kiZ50dFpeCaOm9ImF4BqFu2yxYmnLCae3YQatYmxDg==",
                "spendTime": 500,
                "runTimes": 189983,
                "sid": "0e0ef75a-a92e-4bda-8f76-0c1d1d6c7884",
                "args": "{\"x\":\"1cc414b9dd9a73c51bf623296a372fb761\",\"t\":189983,\"sign\":4250273242}"
            },
            "channel": 0,
            "topURL": "https://mail.163.com/",
            "rtid": "o0lmSS7eULveh9cqiBdVJaS5RMp7ihT1"
        }
    """

    def start_procees(self):
        """
         请求顺序:
         https://dl.reg.163.com/dl/zj/mail/powGetP 获取计算pVParam的数据
         https://dl.reg.163.com/dl/zj/mail/gt   获取tk值
         https://dl.reg.163.com/dl/zj/mail/l    登录请求
        :return:
        """
        # 构造/mail/powGetP 请求
        self.common_data["rtid"] = self.gen_rtid()
        response = self.get_data(self.pv_param_url, json.dumps(self.common_data, separators=(',', ':')))
        print(response)


    def sm4_decrypt_data(self, cipher_text: str) -> str:
        """
        使用SM4解密数据
        :param cipher_text: 密文的十六进制字符串
        :param key: 16字节密钥的十六进制字符串
        :return: 解密后的字符串
        """
        # 创建SM4对象
        crypt_sm4 = CryptSM4()

        # 设置密钥
        key_bytes = bytes.fromhex(self.sm4_encrypt_key)
        crypt_sm4.set_key(key_bytes, SM4_DECRYPT)

        # 解密数据
        decrypt_bytes = crypt_sm4.crypt_ecb(bytes.fromhex(cipher_text))

        # 返回解密后的字符串
        return decrypt_bytes.decode()

    @staticmethod
    def gen_rtid(self):
        # 原始字符串
        chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        # 从字符串中随机选择 32 个字符
        random_string = ''.join(random.choices(chars, k=32))
        return random_string

    def rsa_encrypt(self, plain_text: str) -> str:
        try:

            public_key = self.load_pub_key()
            # Import the public key
            key = RSA.import_key(public_key)

            # Create cipher
            cipher = PKCS1_v1_5.new(key)

            # Encrypt the data
            encrypted = cipher.encrypt(plain_text.encode('utf-8'))

            # Convert to base64
            encrypted_b64 = b64encode(encrypted).decode('utf-8')

            return encrypted_b64

        except Exception as e:
            print(f"Encryption error: {str(e)}")
            return None

    def load_pub_key(self) -> str:
        with open(self.pub_key_file, 'r') as f:
            return f.read()

    def get_data(self, url: str, json_data: str) -> str:
        cookies = {
            'utid': '8fA2wfZn4Pct47QeyPD5d8CgUwW9tyzk',
            'NTES_WEB_FP': '96738feed456749a47b9e415832a2599',
            'l_s_mail163CvViHzl': '2BDA1093FDDA9283AD02B57FFFEC7E0EA0DE0F870A54A4EC1D7C739BA355DD0AE7D945C8F7116F5CD210CF57016F9734D2FE638108492EB55930CD5B0F217ED1A15B2F6D17FB4262E252F323FAFCB6F757EB1801432595D714C1359D7299B4CA0B085983E6FDEF7553896355EA3CAF46',
        }

        headers = {
            'Accept': '*/*',
            'Accept-Language': 'zh-CN,zh;q=0.9',
            'Cache-Control': 'no-cache',
            'Connection': 'keep-alive',
            'Content-Type': 'application/json',
            'Origin': 'https://dl.reg.163.com',
            'Pragma': 'no-cache',
            'Referer': 'https://dl.reg.163.com/webzj/v1.0.1/pub/index_dl2_new.html?cd=%2F%2Fmimg.127.net%2Fp%2Ffreemail%2Findex%2Funified%2Fstatic%2F2024%2F%2Fcss%2F&cf=urs.163.918051fb.css&MGID=1736009745456.854&wdaId=&pkid=CvViHzl&product=mail163',
            'Sec-Fetch-Dest': 'empty',
            'Sec-Fetch-Mode': 'cors',
            'Sec-Fetch-Site': 'same-origin',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
            'sec-ch-ua': '"Google Chrome";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
            'sec-ch-ua-mobile': '?0',
            'sec-ch-ua-platform': '"Windows"',
        }

        response = requests.post(url, cookies=cookies, headers=headers, json=json_data)
        return response
