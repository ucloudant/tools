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
$ where git
```

## 安装**Docker**运行环境

```bash
$ choco install -y docker-desktop
$ refreshenv
$ where docker docker-compose
```

## 安装**Node.js**运行环境

```bash
$ choco install -y nodejs yarn typescript
$ refreshenv
$ where node yarn tsc
```

## 安装**PHP**运行环境

```bash
$ choco install -y php composer
$ refreshenv
$ where php composer
```

## 安装**Python**运行环境

```bash
$ choco install -y python
$ refreshenv
$ where python py pip
```

## 安装**Golang**运行环境

```bash
$ choco install -y golang
$ refreshenv
$ where go
```

## 安装**Java**运行环境

```bash
$ choco install -y openjdk
$ refreshenv
$ where java
```

## 常用命令行应用

* graphviz 绘图
* pandoc 文档转换

## 常用npm模块

## 常用composer模块

## 常用pip模块

