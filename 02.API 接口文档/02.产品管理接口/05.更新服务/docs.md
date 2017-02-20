---
title: 更新服务接口
taxonomy:
    category: docs
---

* **URL:**

    `/stacks/:stackName/services/:serviceName`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

	```
	{
		"image": {
			"name": "new_name",
			"tag": "new_tag"
		},
		"unit_type": "2U4G"
	}
	```

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid UpdateServiceArgs", "code": "400"}`

	**Code:** `631`
  	
  	**Content:** `{ "message" : "Update Service Error", "code": "631"}`