---
title: 查找团队
taxonomy:
    category: docs
---

* **URL:**

    `/api/teams/:name`

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
        "name": "CIA",
        "leader": "Json Bourne",
        "description": "agent",
        "creator": "yaoshipu",
        "updated_at": "2017-02-20T15:47:38.414+08:00"
    }
    ```

* **Error Response:**

	**Code:** `614`
  	
  	**Content:** `{ "message" : "Get Team Error", "code": "614"}`