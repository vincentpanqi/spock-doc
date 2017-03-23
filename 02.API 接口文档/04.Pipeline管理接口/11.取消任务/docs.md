---
title: 取消任务
taxonomy:
    category: docs
---

### 请求：

    `/api/tasks/id/:id/pipeline/:name`

* **Method:**

    `DELETE`

* **URL Params:**

	`None`

### 请求参数：

    `None`

### 返回：

	**Code:** `200`

### 错误信息：

	**Code:** `688`
  	
  	**Content:** `{ "message" : "Cancel Task Error", "code": "688", "description": "error details"}`