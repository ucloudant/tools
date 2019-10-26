# coding=utf-8
"""
Author: lisongtao
Email: lisongtao716@163.com

date: 2019/10/21 15:47
"""
import requests
from lxml import etree
import os
import subprocess

def request(url):
    headers = {
        'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
        'cache-control': 'max-age=0',
        'upgrade-insecure-requests': '1',
        'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36',
    }
    req = requests.get(url=url, headers=headers)

    return req.text


def mkdir(path_list, head=''):
    for path in path_list:
        head = os.path.join(head, path)

    try:
        if os.path.exists(head) == False:
            os.makedirs(head)
    except Exception as e:
        print(e)


def save_html(file_path, file_content):
    file_name = file_path.split('/')[-1]
    path_list = file_path.split('/')[:-1]
    mkdir(path_list)

    with open(file_path, 'w+', encoding='utf-8') as f:
        f.write(file_content)

    subprocess.call(['pandoc', '-t', 'markdown_strict', '-o', file_path + '.md', file_path])


def get_uri_list():
    HTML = etree.HTML(request(url='https://developers.weixin.qq.com/miniprogram/dev/api-backend/'))
    uri_list = HTML.xpath('//*[@id="app"]/div/div/div[3]/div/div[2]/main/div/div/div/table/tbody/tr/td[1]/a/@href')
    return uri_list


def get_text(base_url, url_list):
    for i in url_list:
        url = '{}{}'.format(base_url, i)
        content = request(url)
        save_html(file_path=i, file_content=content)


def get_base_html():
    text = request(url='https://developers.weixin.qq.com/miniprogram/dev/api-backend/')
    return text


if __name__ == '__main__':
    save_html('base.html', get_base_html())
    uri_list = get_uri_list()
    get_text('https://developers.weixin.qq.com/miniprogram/dev/api-backend/', uri_list)
