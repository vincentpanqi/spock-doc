---
title: 更新Project
taxonomy:
    category: docs
---

### 请求：

    POST /api/kci/projects/:projectId

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
    "timeout": 60,
    "prActive": true,
    "pushActive": true,
    "deployActive": true,
    "tagsActive": true
}
```	

### 返回：

**Code:** `200`

**Content:**

```
{
    "id":395,
    "userId":1380983389,
    "buildLocation":"",
    "name":"fulichao-test-project",
    "repoType":"github",
    "Label":"drone",
    "created":"2017-04-19T17:30:16+08:00",
    "updated":"2017-04-21T11:56:16.204120472+08:00",
    "repoOwner":"dhu-try",
    "repoName":"aone",
    "repoFullName":"dhu-try/aone",
    "repoAvatar":"https://avatars0.githubusercontent.com/u/20898987?v=3",
    "repoLink":"https://github.com/dhu-try/aone",
    "repoScm":"git",
    "repoClone":"https://github.com/dhu-try/aone.git",
    "repoBranch":"develop",
    "timeout":60,
    "prActive":true,
    "pushActive":true,
    "deployActive":true,
    "tagsActive":true
}
```

### 错误信息：

**Code:** `500`

**Content:** `{"code":500,"description":"{\"Code\":400,\"CodeName\":\"\",\"Description\":\"UErrProjectNotExsit\"}\n","message":"Internal Error"}`
