---
title: 列出Project
taxonomy:
    category: docs
---

### 请求：

    GET /api/kci/projects

### 返回：

**Code:** `200`

**Content:**

```
[
    {
        "id":395,
        "userId":1380983389,
        "buildLocation":"",
        "name":"fulichao-test-project",
        "repoType":"github",
        "Label":"drone",
        "created":"2017-04-19T17:30:16+08:00",
        "updated":"2017-04-21T11:56:16+08:00",
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
    },
    {
        "id":389,
        "userId":1380983389,
        "buildLocation":"",
        "name":"qbox_aslan-perf",
        "repoType":"github",
        "Label":"drone",
        "created":"2017-04-19T15:41:35+08:00",
        "updated":"2017-04-19T15:41:35+08:00",
        "repoOwner":"qbox",
        "repoName":"aslan-perf",
        "repoFullName":"qbox/aslan-perf",
        "repoAvatar":"https://avatars3.githubusercontent.com/u/816506?v=3",
        "repoLink":"https://github.com/qbox/aslan-perf",
        "repoScm":"git",
        "repoClone":"https://github.com/qbox/aslan-perf.git",
        "repoBranch":"master",
        "timeout":60,
        "prActive":false,
        "pushActive":true,
        "deployActive":true,
        "tagsActive":false
    }
]
```

### 错误信息：

**Code:** `500`
