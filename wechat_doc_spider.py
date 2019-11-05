# coding=utf-8
"""
Author: lisongtao
Email: lisongtao716@163.com

date: 2019/10/21 15:47
"""
import requests
from lxml import etree
import os
from bs4 import BeautifulSoup
import subprocess
import sys

class WechatDocSpider():

    def __init__(self,base_url,path):
        self.base_url=base_url
        self.path=os.path.join(os.path.abspath('.'),path)
        print(self.path)

    def _request(self,url):
        headers = {
            'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'cache-control': 'max-age=0',
            'upgrade-insecure-requests': '1',
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36',
        }
        req = requests.get(url=url, headers=headers)
        return req.text


    def mkdir(self,path_list, head=''):
        for path in path_list:
            head = os.path.join(head, path)
        try:

            if os.path.exists(head) == False:
                head='\\'.join([ os.path.join('',i) for i in  head.split('\\')[:-1]])
                os.makedirs(head)
        except Exception as e:
            pass


    def _save_html(self,file_path, file_content):

        file_name = file_path.split('/')[-1]
        path_list = file_path.split('/')

        self.mkdir(path_list)

        with open(os.path.join(self.path,file_path), 'w+', encoding='utf-8') as f:
            f.write(file_content)
            subprocess.call(['pandoc', '-t', 'markdown_strict', '-o', file_path + '.md', file_path])


    def get_uri_list(self):
        soup=BeautifulSoup(self._request(self.base_url),"lxml")
        # print(soup.prettify())
        uri_list_html=soup.select('#app div div div.main-container div div.page__wrp main  div  div.content.custom  div  table  tbody  tr td:nth-child(1) a')
        uri_list=[]
        for i in uri_list_html:
            uri_list.append(i['href'])
        return uri_list


    def get_text(self, url_list):
        for i in url_list:

            url = '{}{}'.format(self.base_url, i)
            content = self._request(url)
            self._save_html(file_path=os.path.join(self.path,i), file_content=content)

    def get_base_html(self):
        text = self._request(url=self.base_url)
        return text

    def plan(self):

        self._save_html(os.path.join(self.path,'base.html'), self.get_base_html())
        uri_list = self.get_uri_list()
        self.get_text(uri_list)



if __name__ == '__main__':
    url=sys.argv[1]
    path=sys.argv[2]
    a=WechatDocSpider(base_url=url,path=path)
    a.plan()

