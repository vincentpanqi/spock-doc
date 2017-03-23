---
title: 创建产品
taxonomy:
    category: docs
---
 

#### 注意事项

- 产品依赖次序在`stack_deps`里描述

### 请求：

    POST /api/products

### 请求参数
	
**Type:** `application/json`

**Content:**

```
{
	"product_name": "kodo-double",
	"stack_deps": [
		[
			{
				"stack_name": "mysql-cluster",
				"services": [
					{
						"service_name": "mysql-1",
						"unit_type": "1U1G",
						"image": {
							"name": "mysql",
							"tag": "latest"
						},
						"envs": [
							"MYSQL_ALLOW_EMPTY_PASSWORD=1"
						],
						"command": [
							"mysqld",
							"--log-bin=mysql-bin",
							"--gtid-mode=ON",
							"--enforce-gtid-consistency",
							"--server-id=1",
							"--datadir=/var/lib/mysql/data"
						],
						"volume_args": [
							{
								"mount_path": "/var/lib/mysql",
								"unit_type": "SSD1_10G"
							}
						]
					}
				]
			}
		],
		[
			{
				"stack_name": "kodo-1",
				"services": [
					{
						"service_name": "authproxy-in",
						"unit_type": "1U1G",
						"access_point": {
							"type": "domain",
							"backend_ports": [
								9085
							]
						},
						"image": {
							"name": "authproxy-in.kodo-1",
							"tag": "latest"
						},
						"config_paths": [
							"/authproxy_in/qboxauthproxy.conf"
						]
					}
				]
			},
			{
				"stack_name": "kodo-2",
				"services": [
					{
						"service_name": "authproxy-in",
						"unit_type": "1U1G",
						"access_point": {
							"type": "domain",
							"backend_ports": [
								9085
							]
						},
						"image": {
							"name": "authproxy-in.kodo-2",
							"tag": "latest"
						},
						"config_paths": [
							"/authproxy_in/qboxauthproxy.conf"
						]
					}
				]
			}
		]
	]
}
```

### 请求参数说明：

|参数|说明|
|---|---|
|product_name|产品名称，全局唯一|
|stack_deps|产品依赖服务组，服务组按配置的先后顺序启动，具体参数详见“创建服务组模版”|


### 返回:

**Code:** `200`

### 错误信息:

**Code:** `400`

**Content:** `{ "message" : "Invalid ProductArgs", "code": "400"}`

**Content:** `{ "message" : "Invalid ProductName or StackDeps", "code": "400"}`

**Code:** `623`

**Content:** `{ "message" : "Create Product Error", "code": "623"}`