@echo off
call py -m pip install lxml BeautifulSoup4
call py %~dp0wechat_doc_spider.py %*