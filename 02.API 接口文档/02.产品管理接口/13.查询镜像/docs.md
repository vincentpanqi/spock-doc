---
title: 查询镜像
taxonomy:
    category: docs
---

* **URL:**

    `/api/images/services/:serviceName`

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
	    "name": "helloworld-go",
	    "tag": "demo"
	  }
	]
	```	

* **Error Response:**

	**Code:** `640`
  	
  	**Content:** `{ "message" : "List Images Error", "code": "640"}`