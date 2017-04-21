---
title: 创建Project
taxonomy:
    category: docs
---

### 请求：

    POST /api/kci/projects

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
	"buildLocation": "",
	"name": "",
	"repoType": "",
    "repoOwner": "fulichao",
    "repoName": "aone"
}
```	

### 参数说明:

**Optional:**

`buildLocation` 可空
`name=""` 默认不填=repoName
`repoType=""` 默认不填=github
`repoOwner="fulichao"` 必填
`repoName="aone"` 必填

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
    "created":"2017-04-19T17:30:16.639125819+08:00",
    "updated":"2017-04-19T17:30:16.639125936+08:00",
    "repoOwner":"dhu-try",
    "repoName":"aone",
    "repoFullName":"dhu-try/aone",
    "repoAvatar":"https://avatars0.githubusercontent.com/u/20898987?v=3",
    "repoLink":"https://github.com/dhu-try/aone",
    "repoScm":"git",
    "repoClone":"https://github.com/dhu-try/aone.git",
    "repoBranch":"develop",
    "timeout":60,
    "prActive":false,
    "pushActive":true,
    "deployActive":true,
    "tagsActive":false
}
```	

### 错误信息：

**Code:** `500`

**Content:** `{"code":500,"description":"{\"Code\":404,\"CodeName\":\"\",\"Description\":\" GET https://api.github.com/repos/fulichao/test-project: 404 Not Found []\"}\n","message":"Internal Error"}`
