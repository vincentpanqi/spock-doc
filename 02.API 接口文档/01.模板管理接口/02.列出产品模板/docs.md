---
title: 列出产品模板
taxonomy:
    category: docs
---

## 列出产品模板接口
 
* **URL:**

    `/api/templates/products`

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
					"envs": ["a=b"],
					"command": ["ls"],
					"config_paths": ["/disk1"],
					"volume_args": [
						{
						"unit_type": "SSD1_10G",
						"mount_path": "/disk1"
						}
					],
					"access_point": {
						"type": "domain",
						"proto": "http",
						"ap_ports": [8080],
						"backend_ports": [25000]
					},
					"test": {
						"command": "",
						"result_path": ""
					}
					}
				],
				"init_scripts": [
					{
					"service_name": "service-1",
					"commands": []
					}
				]
				}
			]
			]
		}
	]
	```	
* **Error Response:**

	**Code:** `611`
  	
  	**Content:** `{ "message" : "List Template Error", "code": "611"}`