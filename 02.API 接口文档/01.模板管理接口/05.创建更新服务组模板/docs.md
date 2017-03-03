---
title: 创建更新服务组模板
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/templates/stacks`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

    ```
	{
		"stack_name": "stack-2",
		"internal": false,
		"init_scripts": [
			{
			"service_name": "service-2",
			"command": "urlencode"
			}
		],
		"services": [
			{
				"service_name": "service-2",
				"unit_type": "1U1G",
				"ports": [32111],
				"env": [{"key":"value"},{"key":"value"}],
				"command": ["ls"],
				"config_paths": ["/disk1"],
				"volume_args": [
					{
					"mount_path": "/disk1",
					"unit_type": "SSD1_10G"
					}
				],
				"image": {
					"name": "service-1",
					"tag": "test"
				},
				"access_point": {
					"type": "domain",
					"backend_ports": [
					25000
					]
				},
				"test": {
					"command": "ls",
					"result_path": "/disk1"
				}
			}
		]
	}
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid StackTemplateArgs", "code": "400", "description": "error details"}`

	**Code:** `610`
  	
  	**Content:** `{ "message" : "Upsert Template Error", "code": "610", "description": "error details"}`
