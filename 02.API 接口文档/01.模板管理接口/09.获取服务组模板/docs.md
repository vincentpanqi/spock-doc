---
title: 获取服务组模板
taxonomy:
    category: docs
---


#### 注意事项

- 模版分成两类部署服务模版和测试模版
- test字段是测试服务专属字段，部署服务不需要

### 请求：

    GET /api/templates/stacks/:stackName

### 返回：

**Code:** `200`

**Content:**

```
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
		"command": [
			"ls"
		],
		"config_paths": [
			"/disk1"
		],
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
```

### 错误信息:

**Code:** `613`

**Content:** `{ "message" : "Get Template Error", "code": "613", "description": "error details"}`


