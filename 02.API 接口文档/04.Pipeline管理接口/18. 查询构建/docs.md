---
title: 查询构建

taxonomy:
    category: docs
---

### 请求：

    GET /api/builds/:owner/:name/id/:buildNum

### 请求参数说明：

- owner: Github owner
- name: Github Repo
- buildNum: Drone build number

### 返回:

**Code:** `200`

**Content:**

```
{
  "id": 38,
  "number": 9,
  "parent": 0,
  "event": "pull_request",
  "status": "success",
  "error": "",
  "enqueued_at": 1501335844,
  "created_at": 1501335005,
  "started_at": 1501335848,
  "finished_at": 1501335865,
  "deploy_to": "",
  "commit": "",
  "branch": "master",
  "ref": "refs/pull/0/merge",
  "refspec": "master:master",
  "remote": "",
  "title": "MANUAL_BUILD_BRANCH #master",
  "message": "MANUAL_BUILD_BRANCH #master",
  "timestamp": 0,
  "sender": "",
  "author": "yaoshipu",
  "author_avatar": "https://avatars0.githubusercontent.com/u/13618151?v=4",
  "author_email": "",
  "link_url": "",
  "reviewed_by": "",
  "reviewed_at": 0,
  "procs": [
    {
      "id": 390,
      "pid": 1,
      "ppid": 0,
      "pgid": 1,
      "name": "",
      "state": "success",
      "exit_code": 0,
      "start_time": 1501335848,
      "end_time": 1501335865,
      "children": [
        {
          "id": 391,
          "pid": 2,
          "ppid": 1,
          "pgid": 2,
          "name": "sample-helloworld.git",
          "state": "success",
          "exit_code": 0,
          "start_time": 1501335848,
          "end_time": 1501335852
        },
        {
          "id": 392,
          "pid": 3,
          "ppid": 1,
          "pgid": 3,
          "name": "build",
          "state": "success",
          "exit_code": 0,
          "start_time": 1501335853,
          "end_time": 1501335862
        }
      ]
    }
  ]
}
```

### 错误信息：

**Code:** `500`

**Content:** `{ "message" : "Drone Get Build Error", "code": "500", "description": "error details"}`
