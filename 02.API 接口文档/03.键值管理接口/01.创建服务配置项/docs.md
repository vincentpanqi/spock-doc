---
title: 创建服务配置项
taxonomy:
    category: docs
---

* **URL:**

    `/api/configs`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**
	
	**Type:** `application/json`
	
	**Content:**

	```
  {
    "namespace": "qiniu",
    "vars":
    {
      "ka": "va-spockadmin",
      "kb": "vb-spockadmin"
    }
  }
  ```

* **Success Response:**

    **Code:** `200`

* **Error Response:**

    **Code:** `643`
  	
  	**Content:** `{ "message" : "Create Config Service Specs Error", "code": "643"}`