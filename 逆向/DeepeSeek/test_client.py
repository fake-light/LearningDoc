"""
单元测试：DeepSeek 客户端封装
============================

测试 deepseek_client 和 config 模块的功能
"""

import unittest
import json
import base64
from unittest.mock import Mock, patch, MagicMock
from deepseek_client import DeepSeekClient, DeepSeekConfig
from config import (
    get_config,
    load_config_from_env,
    load_config_from_file,
    save_config_to_file,
)


class TestDeepSeekClient(unittest.TestCase):
    """测试 DeepSeekClient 类"""
    
    def setUp(self):
        """测试前的准备"""
        self.test_config = {
            'cookies': {
                'HWWAFSESID': 'test_id',
                'ds_session_id': 'test_session',
            },
            'headers': {
                'authorization': 'Bearer test_token',
                'content-type': 'application/json',
            },
            'chat_session_id': 'test_chat_session',
        }
    
    def test_client_initialization(self):
        """测试客户端初始化"""
        client = DeepSeekClient(
            cookies=self.test_config['cookies'],
            headers=self.test_config['headers'],
            chat_session_id=self.test_config['chat_session_id'],
            verbose=False,
        )
        
        self.assertEqual(client.chat_session_id, 'test_chat_session')
        self.assertEqual(client.model_type, 'default')
        self.assertFalse(client.verbose)
    
    def test_build_pow_response(self):
        """测试 POW 响应构建"""
        client = DeepSeekClient(
            cookies=self.test_config['cookies'],
            headers=self.test_config['headers'],
            chat_session_id=self.test_config['chat_session_id'],
        )
        
        challenge_data = {
            'algorithm': 'DeepSeekHashV1',
            'challenge': 'abc123def456',
            'salt': 'salt123',
            'signature': 'sig123',
        }
        answer = 12345
        
        encoded = client._build_pow_response(challenge_data, answer)
        
        # 验证是有效的 Base64
        decoded = base64.b64decode(encoded).decode()
        decoded_json = json.loads(decoded)
        
        self.assertEqual(decoded_json['algorithm'], 'DeepSeekHashV1')
        self.assertEqual(decoded_json['answer'], 12345)
        self.assertEqual(decoded_json['salt'], 'salt123')
    
    def test_headers_not_modified(self):
        """测试原始 headers 不被修改"""
        original_headers = {
            'authorization': 'Bearer token',
            'content-type': 'application/json',
        }
        headers_copy = original_headers.copy()
        
        client = DeepSeekClient(
            cookies={},
            headers=original_headers,
            chat_session_id='test',
        )
        
        # 原始 headers 不应被修改
        self.assertEqual(original_headers, headers_copy)
    
    @patch('requests.post')
    def test_get_pow_challenge_structure(self, mock_post):
        """测试获取 POW challenge 的数据结构"""
        mock_response = Mock()
        mock_response.json.return_value = {
            'data': {
                'biz_data': {
                    'algorithm': 'DeepSeekHashV1',
                    'challenge': 'test_challenge',
                    'salt': 'test_salt',
                    'signature': 'test_sig',
                    'difficulty': 100000,
                    'expire_at': 1234567890,
                }
            }
        }
        mock_post.return_value = mock_response
        
        client = DeepSeekClient(
            cookies={},
            headers={},
            chat_session_id='test',
            verbose=False,
        )
        
        challenge = client._get_pow_challenge()
        
        self.assertEqual(challenge['algorithm'], 'DeepSeekHashV1')
        self.assertEqual(challenge['challenge'], 'test_challenge')
        self.assertEqual(challenge['salt'], 'test_salt')
        self.assertIn('difficulty', challenge)


class TestConfig(unittest.TestCase):
    """测试配置管理"""
    
    def test_get_config_returns_dict(self):
        """测试 get_config 返回字典"""
        config = get_config()
        
        self.assertIsInstance(config, dict)
        self.assertIn('cookies', config)
        self.assertIn('headers', config)
        self.assertIn('chat_session_id', config)
    
    def test_config_structure(self):
        """测试配置结构的完整性"""
        config = get_config()
        
        # 检查必需的字段
        required_fields = ['cookies', 'headers', 'chat_session_id']
        for field in required_fields:
            self.assertIn(field, config, f"缺少必需字段: {field}")
        
        # 检查 cookies 和 headers 是字典
        self.assertIsInstance(config['cookies'], dict)
        self.assertIsInstance(config['headers'], dict)
        
        # 检查 chat_session_id 是字符串
        self.assertIsInstance(config['chat_session_id'], str)


class TestDeepSeekConfig(unittest.TestCase):
    """测试 DeepSeekConfig 类"""
    
    def test_create_from_dict(self):
        """测试从字典创建客户端"""
        config_dict = {
            'cookies': {'test': 'cookie'},
            'headers': {'test': 'header'},
            'chat_session_id': 'test_session',
            'verbose': True,
        }
        
        client = DeepSeekConfig.create_from_dict(config_dict)
        
        self.assertIsInstance(client, DeepSeekClient)
        self.assertEqual(client.chat_session_id, 'test_session')
        self.assertTrue(client.verbose)
    
    def test_create_from_dict_with_defaults(self):
        """测试使用默认值创建客户端"""
        config_dict = {
            'cookies': {},
            'headers': {},
            'chat_session_id': 'test',
        }
        
        client = DeepSeekConfig.create_from_dict(config_dict)
        
        self.assertEqual(client.model_type, 'default')
        self.assertFalse(client.verbose)


class TestIntegration(unittest.TestCase):
    """集成测试"""
    
    def test_client_with_config(self):
        """测试使用配置创建客户端"""
        config = get_config()
        
        client = DeepSeekClient(
            cookies=config['cookies'],
            headers=config['headers'],
            chat_session_id=config['chat_session_id'],
        )
        
        self.assertIsNotNone(client)
        self.assertEqual(client.chat_session_id, config['chat_session_id'])
    
    def test_pow_response_base64_decode(self):
        """测试 POW 响应的 Base64 编码/解码"""
        client = DeepSeekClient(
            cookies={},
            headers={},
            chat_session_id='test',
        )
        
        challenge_data = {
            'algorithm': 'DeepSeekHashV1',
            'challenge': 'abc' * 20,  # 60 chars hex
            'salt': 'test_salt',
            'signature': 'test_sig',
        }
        
        encoded = client._build_pow_response(challenge_data, 999)
        
        # 验证能成功解码
        try:
            decoded_str = base64.b64decode(encoded).decode('utf-8')
            decoded_json = json.loads(decoded_str)
            self.assertEqual(decoded_json['answer'], 999)
        except Exception as e:
            self.fail(f"Base64 编码/解码失败: {e}")


class TestErrorHandling(unittest.TestCase):
    """测试错误处理"""
    
    def test_ask_with_exception(self):
        """测试异常处理"""
        client = DeepSeekClient(
            cookies={},
            headers={},
            chat_session_id='test',
            verbose=False,
        )
        
        with patch.object(client, '_get_pow_challenge', side_effect=Exception("Test error")):
            response = client.ask("test")
            chunks = list(response)
            
            # 应该返回错误信息
            self.assertTrue(len(chunks) > 0)
            self.assertIn('错误', chunks[0])


def run_tests():
    """运行所有测试"""
    # 创建测试套件
    loader = unittest.TestLoader()
    suite = unittest.TestSuite()
    
    # 添加所有测试类
    suite.addTests(loader.loadTestsFromTestCase(TestDeepSeekClient))
    suite.addTests(loader.loadTestsFromTestCase(TestConfig))
    suite.addTests(loader.loadTestsFromTestCase(TestDeepSeekConfig))
    suite.addTests(loader.loadTestsFromTestCase(TestIntegration))
    suite.addTests(loader.loadTestsFromTestCase(TestErrorHandling))
    
    # 运行测试
    runner = unittest.TextTestRunner(verbosity=2)
    result = runner.run(suite)
    
    return result


if __name__ == '__main__':
    print("=" * 70)
    print("DeepSeek 客户端封装 - 单元测试")
    print("=" * 70)
    print()
    
    result = run_tests()
    
    print()
    print("=" * 70)
    print(f"测试完成: {result.testsRun} 个测试")
    print(f"成功: {result.testsRun - len(result.failures) - len(result.errors)}")
    print(f"失败: {len(result.failures)}")
    print(f"错误: {len(result.errors)}")
    print("=" * 70)
