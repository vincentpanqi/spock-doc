---
title: 更新用户
taxonomy:
    category: docs
---

- 需要管理员权限

### 请求：

    `/api/users/:username`

* **Method:**

    `PUT`

* **URL Params:**

    `None`

### 请求参数：

    `None`
    ```
    {
        "username": "admin",
        "title": "",
        "name": "",
        "nickname": "",
        "email": "",
        "roles": [
            "staff"
        ],
        "disabled": false,
        "manager": "",
        "team": "",
        "mobile": "",
        "mobile2": "",
        "office": "",
        "join_at": "0001-01-01T00:00:00Z",
        "number": 0,
        "nation": "",
        "created_at": "0001-01-01T00:00:00Z",
        "updated_at": "2017-02-20T21:18:07.79+08:00",
        "last_active_ip": "",
        "last_active_at": "0001-01-01T00:00:00Z",
        "parents": []
    }
    ```

### 返回：

	**Code:** `200`

### 错误信息：

	**Code:** `601`
  	
  	**Content:** `{ "message" : "Update user error", "code": "601", "description": "error details"}`