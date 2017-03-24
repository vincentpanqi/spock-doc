---
title: 网络规格
taxonomy:
    category: docs
process:
	twig: true
---
#### 注意事项

- public_ip 所有用户的同一个服务的public_ip相同，由后端直接申请
- 前端不再需要配置ap_port，如果配置domain，那么ap_port默认80，不允许用户自定义
- 如果接入类型选择public_ip，那么ap_port由后端自动生成，前端只需要在服务详情页展示

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