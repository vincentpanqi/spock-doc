---
title: 网络规格
taxonomy:
    category: docs
process:
	twig: true
---

### 接入类型type

|值|说明|
|---|---|
|domain     |公网域名模式，端口配置默认协议http|
|public_ip  |公网ip模式，端口配置默认协议tcp|
|internal_ip|内网模式，端口配置默认协议tcp|

### 接入端口配置

|属性|说明|
|---|---|
|proto|协议类型，支持http、tcp、udp|
|ap_port|接入点监听流量的端口或端口范围|
|backend_port|接入点转发的后端的端口或端口范围|