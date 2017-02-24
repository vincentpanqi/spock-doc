---
title: 列出服务组名称
taxonomy:
    category: docs
---

* **URL:**

    `/stacks/names`

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
	  "acc",
	  "kodo",
	  "memcached",
	  "mongo-cluster",
	  "mysql-cluster"
  ]
  ```

* **Error Response:**

	**Code:** `625`
  	
  	**Content:** `{ "message" : "List Stack Names Error", "code": "625"}`