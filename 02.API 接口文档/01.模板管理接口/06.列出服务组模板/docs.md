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
			"product_name": "kodo",
			"enabled": true,
			"stack_deps": [
				{
					"service_name": "pfdstg",
					"unit_type": "1U1G",
					"ports": [
						21030,
						21035
					],
					"envs": ["a=b"],
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

	**Code:** `611`
  	
  	**Content:** `{ "message" : "List Template Error", "code": "611", "description": "error details"}`