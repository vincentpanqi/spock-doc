---
title: 列出用户
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/users`

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
    ]
    ```

* **Error Response:**

    **Code:** `602`
  	
  	**Content:** `{ "message" : "List users error", "code": "602", "description": "error details"}`