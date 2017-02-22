---
title: 创建更新团队
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/teams`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

	**Type:** `application/json`
	
	**Content:**

    ```
    {
        "name": "CIA",
        "leader": "Jason Bourne",
        "description": "agent"
    }
	```	

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `400`
  	
  	**Content:** `{ "message" : "Invalid Team Args", "code": "400", "description": "error details"}`

	**Code:** `616`
  	
  	**Content:** `{ "message" : "Upsert Team Error", "code": "616", "description": "error details"}`