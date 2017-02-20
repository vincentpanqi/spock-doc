---
title: 产品管理接口
taxonomy:
    category: docs
---

## 查询镜像

* **URL:**

    `/images/services/:serviceName`

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