---
title: 更新服务配置项
taxonomy:
    category: docs
---

* **URL:**

    `/configs`

* **Method:**

    `PUT`

* **URL Params:**

    `None`

* **Data Params:**
	
	**Type:** `application/json`
	
	**Content:**

	```
  {
    "vars":
    {
      "ka": "va-updated",
      "kb": "vb-updated"
    }
  }
  ```

* **Success Response:**

    **Code:** `200`

* **Error Response:**

    **Code:** `642`
  	
  	**Content:** `{ "message" : "Update Config Service Specs Error", "code": "642"}`