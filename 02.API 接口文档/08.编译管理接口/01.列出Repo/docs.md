---
title: 列出Repo
taxonomy:
    category: docs
---

### 请求：

    GET /api/kci/repos

### 请求参数：

**Optional:** 默认不填是github

`repoType="github"`

### 返回：

**Code:** `200`

**Content:**

```
[
    {
        "repoType":"github",
        "repoOwner":"dhu-try",
        "repoName":"aone",
        "repoFullName":
        "dhu-try/aone",
        "repoAvatar":"https://avatars0.githubusercontent.com/u/20898987?v=3"
    }
]
```	

### 错误信息：

**Code:** `500`
