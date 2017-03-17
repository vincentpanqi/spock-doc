---
title: 同步服务配置项
taxonomy:
    category: docs
---

* **URL:**

    `/api/configs/sync`

* **Method:**

    `POST`

* **URL Params:**

    **Optional:** 默认不填是false

    `force=<false|true>`

* **Data Params:**

    `None`

* **Success Response:**

    **Code:** `200`

* **Error Response:**

    **Code:** `625`
  	
  	**Content:** `{ "message" : "Sync Config Service Specs Error", "code": "625"}`