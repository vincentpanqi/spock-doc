
kubectl 是 Kubernetes 自带的客户端，可以用它来直接操作容器

## 安装 kubectl

> macOS

可通过如下命令下载 kubectl:


```bash
curl -LO http://spock-resources.qbox.net/kubectl/mac/v1.7.3/kubectl
```

将其变为可执行文件

```bash
chmod +x ./kubectl
```

移动二进制文件到你的环境变量
```bash
sudo mv ./kubectl /usr/local/bin/kubectl
```


> Linux

下载 kubectl:

```bash
curl -LO http://spock-resources.qbox.net/kubectl/linux/v1.7.3/kubectl
```

将其变为可执行文件

```bash
chmod +x ./kubectl
```

移动二进制文件到你的环境变量

```bash
sudo mv ./kubectl /usr/local/bin/kubectl
```

## 配置 kubectl

登录 [Spock](http://spock.qiniu.io)，点击`个人设置` -> `私钥下载` 下载自己的私钥配置。

![个人中心](_images/spock-profile.png "个人中心")


将 `config` 文件移动到 `kubectl` 的默认配置文件夹

以 macOS 为例：

```bash
mv ./config /Users/你的用户名/.kube
```
其他系统以此类推，将 `config` 文件移动到用户目录的 `.kube` 文件夹

![config](_images/kube-config.png "config")

配置完成后即可使用 `kubectl`


kubectl 常用命令可以参考：
[Kubectl command](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
[Kubectl for Docker Users](https://kubernetes.io/docs/reference/kubectl/docker-cli-to-kubectl/)
