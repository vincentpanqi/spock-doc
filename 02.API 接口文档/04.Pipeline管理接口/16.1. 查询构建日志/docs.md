---
title: 查询构建日志

taxonomy:
    category: docs
---

### 注意事项

- 需要等待编译完成以后才能查询到日志

### 请求：

    GET /api/builds/:owner/:name/logs/:buildNum/:jobNum/:proc

### 请求参数说明：

- owner: Github owner
- name: Github Repo
- buildNum: Drone build number
- jobNum: Drone job number 默认情况下jobNum=1, 只有在跑了matrix情况下才有其他的jobNum
- proc: Drone process name 可以通过查询构建 API 获取全部 procs 信息

### 返回:

**Code:** `200`

**Content:**

```
[
  {
    "proc": "sample-helloworld.git",
    "pos": 0,
    "out": "+ git init\n"
  },
  {
    "proc": "sample-helloworld.git",
    "pos": 1,
    "out": "Initialized empty Git repository in /drone/src/.git/\n"
  }
]
```

### 错误信息：

**Code:** `6701`

**Content:** `{ "message" : "Drone Get Build Logs Error", "code": "6701", "description": "error details"}`