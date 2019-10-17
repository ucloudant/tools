# 云蚁技术部开发工具

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

```bash
$ choco install [app] [-y] [--force]
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

## 安装**Git**应用

```bash
$ choco install -y git
$ refreshenv
$ git --version
```

## 安装**Docker**运行环境

```bash
$ choco install -y docker-desktop
$ refreshenv
$ docker --version
```

## 安装**Node.js**运行环境

```bash
$ choco install -y nodejs yarn typescript
$ refreshenv
$ yarn --version
```

## 安装**PHP**运行环境

```bash
$ choco install -y php composer
$ refreshenv
$ composer --version
```

## 安装**Python**运行环境

```bash
$ choco install -y python
$ refreshenv
$ python --version
```

## 安装**Go**运行环境

```bash
$ choco install -y golang
$ refreshenv
$ go version
```

## 安装**Java**运行环境

```bash
$ choco install -y openjdk
$ refreshenv
$ java --version
```

## 常用应用列表

* graphviz plantuml依赖
* pandoc 文档转换