---
title: 列出所有产品名称
taxonomy:
    category: docs
---

* **URL:**

    `/api/products/names`

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
        "memcached",
        "kodo"
    ]
    ```

* **Error Response:**

	**Code:** `621`
  	
  	**Content:** `{ "message" : "List Product Names Error", "code": "621"}`