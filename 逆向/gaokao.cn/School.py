import requests


# type  2074: 历史类, 2073: 物理类
# batch 14: 本科批 10专科批
class School:

    def __init__(self, id, name, province, city_name, county_name, f211, f985, nature_name, majors):
        self.id = id
        self.name = name
        self.province = province
        self.city_name = city_name
        self.county_name = county_name
        self.f211 = f211
        self.f985 = f985
        self.nature_name = nature_name
        self.majors = majors

    @staticmethod
    def getMajor(school_id, local_province, type_batch, score):
        headers = {
            'accept': 'application/json, text/plain, */*',
            'accept-language': 'zh-CN,zh;q=0.9',
            'cache-control': 'no-cache',
            'origin': 'https://www.gaokao.cn',
            'pragma': 'no-cache',
            'priority': 'u=1, i',
            'referer': 'https://www.gaokao.cn/',
            'sec-ch-ua': '"Google Chrome";v="137", "Chromium";v="137", "Not/A)Brand";v="24"',
            'sec-ch-ua-mobile': '?0',
            'sec-ch-ua-platform': '"Windows"',
            'sec-fetch-dest': 'empty',
            'sec-fetch-mode': 'cors',
            'sec-fetch-site': 'same-site',
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36',
        }

        params = {
            'a': 'www.gaokao.cn',
        }

        response = requests.get(
            f'https://static-data.gaokao.cn/www/2.0/schoolspecialscore/{school_id}/2024/{local_province}.json',
            params=params,
            headers=headers,
        )
        data = response.json()
        data = data['data']

        majors = []
        try:
            for item in data[type_batch]['item']:
                if item['level3'] == '48':  # 外国语跳过
                    continue
                if item['zslx_name'] == '预科':  # 预科跳过
                    continue
                if item['min'] - score <= 15:
                    majors.append(Major(item['spname'], item['diff'], item['min'], item['min_section'], item['lq_num'], item['average'],
                                        item['level1_name'], item['level2_name'], item['level3_name'], item['local_batch_name'],
                                        item['sp_info']))
                    print(f'专业: {item['spname']}  录取人数: {item['lq_num']}  最低分: {item['min']}  最低位次: {item['min_section']}  与分数线相差: {item['diff']}  最低分相差: {item['min'] - score}  招录说明: {item['sp_info']}')
        except Exception as e:
            print(f'爬取专业出问题了,错误信息: {e}')
            pass
        return majors


class Major:
    def __init__(self, spname, diff, min_score, min_section, lq_num, average, level1_name, level2_name, level3_name,
                 local_batch_name, sp_info):
        self.spname = spname
        self.diff = diff
        self.min_score = min_score
        self.min_section = min_section
        self.lq_num = lq_num
        self.average = average
        self.level1_name = level1_name
        self.level2_name = level2_name
        self.level3_name = level3_name
        self.local_batch_name = local_batch_name
        self.sp_info = sp_info

