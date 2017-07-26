---
title: 查询队列
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipeline/queue

    GET /api/pipeline/queue/realtime [websocket 接口]

### 返回：

**Code:** `200`

**Content:** 

```
[
    {
        "id": "58ad03eb8a4b40d217000001",
        "pipeline_name": "pipeline-1",
        "status": 0,
        "task_creator": "yaoshipu",
        "repo_name": "aslan-platform",
        "repo_owner": "yaoshipu",
        "branch": "develop",
        "pull_request_number": 62,
        "commit_id": "98a663e5a6effc9337a29353acf338d484ae1609",
        "created": 1490255652
    }
]
```	
### 返回参数说明；

|id|队列任务ID|
|---|---|
|pipeline_name|工作流名称|
|status|队列中任务的状态|
|task_creator|任务创建者|
|repo_name|代码库名称|
|repo_owner|代码库所有人|
|branch|代码编译分支|
|pull_request_number|prID|
|commit_id|commitID|
|created|创建时间|

### 错误信息：

**Code:** `6805`

**Content:** `{ "message" : "List Queue Items Error", "code": "6805", "description": "error details"}`
