---
title: 查询镜像接口
taxonomy:
    category: docs
---

* **URL:**

    `/images/services/:serviceName`

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
	[
	  {
	    "name": "helloworld-go",
	    "tag": "demo"
	  }
	]
	```	

* **错误信息:**

	**Code:** `640`
  	
  	**Content:** `{ "message" : "List Images Error", "code": "640"}`