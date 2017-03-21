---
title: 创建产品接口
taxonomy:
    category: docs
---
 
- 产品依赖次序在`stack_deps`里描述

* **URL:**

    `/api/products`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**
	
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
					],
					"init_scripts": [
						{
							"service_name": "mysql-1",
							"command": [
								"mysql",
								"-e",
								"CREATE DATABASE testing; use testing; CREATE TABLE test(name varchar(32)); INSERT INTO test VALUES('hello')"
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

* **返回:**

	**Code:** `200`

* **错误信息:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid ProductArgs", "code": "400"}`
	
	**Content:** `{ "message" : "Invalid ProductName or StackDeps", "code": "400"}`

	**Code:** `622`
  	
  	**Content:** `{ "message" : "Create Product Error", "code": "622"}`