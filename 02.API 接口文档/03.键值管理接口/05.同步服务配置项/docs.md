---
title: 同步服务配置项
taxonomy:
    category: docs
---

### 请求：

    `/api/configs/sync`

* **Method:**

    `POST`

* **URL Params:**

    **Optional:** 默认不填是false

    `force=<false|true>`

### 请求参数：

    `None`

### 返回：

    **Code:** `200`

### 错误信息：

    **Code:** `625`
  	
  	**Content:** `{ "message" : "Sync Config Service Specs Error", "code": "625"}`