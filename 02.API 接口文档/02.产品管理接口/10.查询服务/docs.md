---
title: 查询服务
taxonomy:
    category: docs
---

* **URL:**

    `/stacks/:stackName/services/:serviceName`

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
		"service_name": "io",
		"state": "DEPLOYED",
		"status": "RUNNING",
		"domains": [
			"yaoshipu.io.kodo.spock.qiniu.io"
		],
		"image": {
			"name": "qiniu-spock/io",
			"tag": "test"
		}
	}
	```

* **Error Response:**

	**Code:** `635`
  	
  	**Content:** `{ "message" : "Get Service Inspect Error", "code": "635"}`