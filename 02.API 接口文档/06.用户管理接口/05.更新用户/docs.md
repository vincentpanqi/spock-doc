---
title: 更新用户
taxonomy:
    category: docs
---

- 基本信息需要user权限，roles相关的信息需要 superadmin 权限，team相关信息admin权限

### 请求：

    PUT /api/users/:username`


### 请求参数：

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
    "teams": [""],
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
    "parents": [],
    "github_id", "yaoshipu"
}
```

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `6002`

**Content:** `{ "message" : "Update user error", "code": "6002", "description": "error details"}`
