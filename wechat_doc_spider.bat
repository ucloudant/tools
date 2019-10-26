@echo off
pip install requests %~dp0lxml-4.4.1-cp38-cp38-win_amd64.whl
py %~dp0wechat_doc_spider.py %*