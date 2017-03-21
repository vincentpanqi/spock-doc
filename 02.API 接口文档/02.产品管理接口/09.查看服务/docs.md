---
title: 查看服务接口
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

* **返回:**

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

* **错误信息:**

	**Code:** `635`
  	
  	**Content:** `{ "message" : "Get Service Inspect Error", "code": "635"}`