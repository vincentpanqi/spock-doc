---
title: 当前用户
taxonomy:
    category: docs
---

### 请求：

    GET /api/user/overview

### 返回：

**Code:** `200`

**Content:** 
```
{
    "username": "yaoshipu",
    "title": "",
    "name": "yaoshipu",
    "nickname": "",
    "email": "yaoshipu@qiniu.com",
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
    "updated_at": "2017-02-20T21:18:07.853+08:00",
    "last_active_ip": "127.0.0.1",
    "last_active_at": "2017-02-20T17:19:17.171+08:00",
    "parents": []
}
```

### 错误信息：

**Code:** `500`

**Content:** `{ "message" : "InvaInternal Error", "code": "500", "description": "error details"}`