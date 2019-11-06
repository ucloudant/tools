@echo off
call py -m pip install --upgrade pip
call py -m pip install requests lxml BeautifulSoup4
call py %~dp0wechat_doc_spider.py %*