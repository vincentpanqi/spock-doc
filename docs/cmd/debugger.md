
debugger 是 spock 封装 Kubernetes kubectl，可以用它来登入容器，进行操作，即将下线，推荐使用[kubectl](命令行工具/kubectl安装与配置.md)

## 安装 debugger

> macOS

可通过如下命令下载 debugger:


```bash
curl -LO  http://ozd1cqzcf.bkt.clouddn.com/debugger-darwin-amd64.tar.gz
```

解压tar包

```bash
tar zxvf debugger-darwin-amd64.tar.gz
```

将其变为可执行文件

```bash
chmod +x ./debugger
```

移动二进制文件到你的环境变量
```bash
sudo mv ./debugger /usr/local/bin/debugger
```


> Linux

下载 kubectl:

```bash
curl -LO http://ozd1cqzcf.bkt.clouddn.com/debugger-linux-amd64.tar.gz
```


解压tar包

```bash

tar zxvf debugger-linux-amd64.tar.gz

```

将其变为可执行文件

```bash
chmod +x ./debugger
```

移动二进制文件到你的环境变量

```bash
sudo mv ./debugger /usr/local/bin/debugger
```

安装完成后即可使用