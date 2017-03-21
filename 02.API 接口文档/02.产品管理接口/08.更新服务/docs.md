---
title: 更新服务
taxonomy:
    category: docs
---

* **URL:**

    `/api/stacks/:stackName/services/:serviceName`

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

* **返回:**

	**Code:** `200`

* **错误信息:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid UpdateServiceArgs", "code": "400"}`

	**Code:** `631`
  	
  	**Content:** `{ "message" : "Update Service Error", "code": "631"}`