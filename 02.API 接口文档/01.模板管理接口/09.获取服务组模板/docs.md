---
title: 获取服务组模板
taxonomy:
    category: docs
---

* **URL:**

    `/api/templates/stacks/:stackName`

* **Method:**

    `GET`

* **URL Params:**

    `None`

* **Data Params:**

    `None`

* **Success Response:**

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

* **Error Response:**

	**Code:** `613`

  	**Content:** `{ "message" : "Get Template Error", "code": "613", "description": "error details"}`

>>> 注意点
- 模版分成两类部署服务模版和测试模版
- 部署服务模版中不需要包含 test 字段
- 测试模版中不需要包含 command 字段
