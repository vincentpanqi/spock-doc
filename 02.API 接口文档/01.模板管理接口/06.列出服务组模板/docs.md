---
title: 列出服务组模板
taxonomy:
    category: docs
---
 
* **URL:**

    `/api/templates/stacks`

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
			"stack_name": "kodo",
			"internal": false,
			"init_scripts": [
				{
					"service_name": "service-1",
					"command": "echo"
				}
			],
			"stack_deps": [
				{
					"service_name": "pfdstg",
					"unit_type": "1U1G",
					"envs": [{"key":"value"},{"key":"value"}],
					"command": ["ls"],
					"config_paths": [
						"/pfdstg/qboxpfdstg.conf"
					],
					"volume_args": [
						{
							mount_path: "/disk1/pfddisk",
							unit_type: "SSD1_10G"
						},
						{
							mount_path: "/disk2/pfddisk",
							unit_type: "SSD1_10G"
						},
						{
							mount_path: "/disk3/pfddisk",
							unit_type: "SSD1_10G"
						}
					],
					"image": {
						"name": "pfdstg",
						"tag": "test"
					},
					"access_points": [{
						"type": "domain",
						"proto": "http",
						"ap_port": 25000,
						"backend_port": 25000
					}],
					"test": {
						"command": "ls",
						"result_path": "/disk1"
					}
				}
			]
		}
	]
	```	
* **Error Response:**

	**Code:** `611`
  	
  	**Content:** `{ "message" : "List Template Error", "code": "611", "description": "error details"}`
