---
title: 创建服务
taxonomy:
    category: docs
---

* **URL:**

    `/api/stacks/:stackName/services`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

	```
	{
		"init_scripts": ["dora_pre_test.sh"],
		"service": {
			"service_name": "doratest",
			"access_points": [{
				"type": "domain",
				"proto": "http",
				"ap_port": 25000,
				"backend_port": 25000
			}],
			"volume_args": [
				{
					"mount_path": "/qbox",
					"unit_type": "SSD1_10G"
				}
			],
			"image": {
				"name": "doratest",
				"tag": "test"
			},
			"unit_type": "1U4G"
		}
	}	
	```

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid CreateServiceArgs Args", "code": "400"}`

	**Code:** `638`
  	
  	**Content:** `{ "message" : "Create Service Error", "code": "638"}`