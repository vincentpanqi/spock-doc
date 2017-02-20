---
title: 登录
taxonomy:
    category: docs
---

* **URL:**

    `/api/user/signin`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/x-www-form-urlencoded`
	
	**Content:**

    ```
    username=yaoshipu&password=Qiniu%40999
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Bad Request", "code": "400"}`

	**Code:** `401`
  	
  	**Content:** `{ "message" : "Unauthorized", "code": "401"}`

	**Code:** `403`
  	
  	**Content:** `{ "message" : "Forbidden", "code": "403"}`