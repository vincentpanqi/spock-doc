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
			"enabled": true,
			"stack_deps": [
				{
					"service_name": "pfdstg",
					"unit_type": "1U1G",
					"ports": [
						21030,
						21035
					],
					"envs": [{"key":"value"},{"key":"value"}],
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

	**Code:** `612`
  	
  	**Content:** `{ "message" : "List Template Error", "code": "612", "description": "error details"}`
