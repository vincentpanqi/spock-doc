---
title: 列出产品模板
taxonomy:
    category: docs
---

## 列出产品模板
 
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
			"product_name": "kodo",
			"enabled": true,
			"internal": false,
			"product_tmpl_deps": [
				{
					"product_name": "mongo-cluster",
					"services": [
						{
							"service_name": "mongo-1",
							"mount_paths": [],
							"ports": [],
							"config_paths": []
						}
					]
				}
			],
			"services": [
				{
					"service_name": "pfdstg",
					"default_unit_type": "1U1G",
					"ports": [
						21030,
						21035
					],
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
					"default_image": {
						"name": "pfdstg",
						"tag": "test"
					}
				}
			]
		}
	]
	```	
* **Error Response:**

	**Code:** `611`
  	
  	**Content:** `{ "message" : "List Template Error", "code": "611"}`