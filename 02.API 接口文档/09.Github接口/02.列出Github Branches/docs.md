---
title: 列出Github Branches
taxonomy:
    category: docs
---

### 请求：

    GET /api/github/repos/:owner/:repo/branches

### 返回：

**Code:** `200`

**Content:**

```
[
    {
        "name":"dev",
        "commit": {
            "sha":"63484a2614f43026c62c1d5ed60321ccb3e6a491","url":"https://api.github.com/repos/dhu-try/test123654/commits/63484a2614f43026c62c1d5ed60321ccb3e6a491"
        },
        "protected":false
    },
    {
        "name":"master",
        "commit": {
            "sha":"231c263353c5b21c0a4bb08e0fd47604bbceb457","url":"https://api.github.com/repos/dhu-try/test123654/commits/231c263353c5b21c0a4bb08e0fd47604bbceb457"
        },
        "protected":false
    }
]
```	

### 错误信息：

**Code:** `6911`

**Content:** `{"code":6911,"description":"GET https://api.github.com/repos/dhu-try/aslan-platform/branches?page=1: 404 Not Found []","message":"List Branches Error"}`
