---
title: 查询团队
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

* **返回:**

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

* **错误信息:**

	**Code:** `614`
  	
  	**Content:** `{ "message" : "Get Team Error", "code": "614", "description": "error details"}`