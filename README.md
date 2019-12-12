# 云蚁技术部开发工具

开发需要的各种工具整合（Shell， 脚本， 模块管理， 任务管理）

## Chocolatey基本操作

将项目路径添加到系统PATH环境变量

查找应用

* --local 查找已安装应用

```bash
$ choco list [app] [--local]
```

安装应用

* -y 静默安装
* --force 重新安装
* --proxy=PROXY 设置代理

```bash
$ choco install [app] [-y] [--force] [--proxy=PROXY]
```

卸载应用

```bash
$ choco uninstall [app]
```

升级所有应用

```bash
$ choco upgrade [app|all] [-y]
```

刷新PATH环境变量

```bash
$ refreshenv
```

## 运行环境/编译环境支持

### Node.js

**Node.js**运行环境

```bash
node --version
```

### PHP

**PHP**运行环境

```bash
php --version
```

### Python

**Python**运行环境

```bash
py -2 --version
py -3 --version
```

### Golang

**Go**运行环境

```bash
go version
```

### Java

**Java**运行环境

```bash
java --version
```

### Ruby

**Ruby**运行环境

```bash
ruby --version
```

### Perl

**Perl**运行环境

```bash
perl --version
```

### Lua

**Lua**运行环境

```bash
lua -v
```

### VC14

**Visual C++ 14**编译环境

```bash
vc14-x64
```

### VC15

**Visual C++ 15**编译环境

```bash
vc15-x64
```

## 常用工具

### Docker

**Docker**命令行工具

```bash
docker --version
```

### Docker Compose

**Docker Compose**命令行工具

```bash
docker-compose --version
```

### Ninja

构建工具

```bash
ninja --version
```

### Symfony

**Symfony**命令行工具

```bash
symfony -V
```

### Pandoc

文档转换工具

```bash
pandoc --version
```

### Standard JS

Standard代码规范

```bash
standard --version
```

### GraphViz

绘图工具

```bash
dot -V
```

### Wechat Doc Spider

微信文档抓取工具

```bash
$ python wechat_doc_spider.py https://developers.weixin.qq.com/miniprogram/dev/api-backend/ ./doc/backend
```

## 模块

## Node.js

* underscore 通用基础函数库 ★★★★☆
* lodash 通用基础函数库 ★★★★★

## PHP

* lodash-php/lodash-php 从lodash.js移植而来的通用基础函数库 ★★★★★

## Python
