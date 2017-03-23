---
title: 列出产品模板
taxonomy:
    category: docs
---

### 请求:

    GET /api/templates/products

### 返回:

**Code:** `200`

**Content:**

```
[
	{
		"product_name": "stack-single",
		"enabled": true,
		"stack_deps": [
		[
			{
			"stack_name": "stack-1",
			"internal": false,
			"services": [
				{
				"service_name": "service-1",
				"image": {
					"name": "service-1",
					"tag": "test"
				},
				"unit_type": "1U1G",
				"envs": [{"key":"value"},{"key","value"}],
				"command": ["ls"],
				"config_paths": ["/disk1"],
				"volume_args": [
					{
					"unit_type": "SSD1_10G",
					"mount_path": "/disk1"
					}
				],
				"access_points": [{
					"type": "domain",
					"proto": "http",
					"ap_port": 25000,
					"backend_port": 25000
				}],
				"test": {
					"command": "",
					"result_path": ""
				}
				}
			],
			"init_scripts": [
				{
				"service_name": "service-1",
				"command": "echo"
				}
			]
			}
		]
		]
	}
]
```	
### 返回参数:

|  参数       |   描述                     |
|------------|----------------------------|
|product_name|产品名称，全局唯一             |
|enabled     |是否对外启用模版               |
|stack_deps  |详见"创建服务组模版"参数        |
|init_scripts|初始化脚本，服务创建成功后执行   |


### 错误信息:

**Code:** `612`

**Content:** `{ "message" : "List Template Error", "code": "612", "description": "error details"}`
