---
title: 列出运行中任务
taxonomy:
    category: docs
---

### 请求：

    GET /api/tasks/running

### 返回：

**Code:** `200`

**Content:** 

```
[
    {
        "pipeline_name": "pipeline-1",
        "creator": "yaoshipu",
        "stack_name": "stack-1",
        "service_name": "service-1",
        "test_stack": "test",
        "test_service": "doratest",
        "test_env": "spock",
        "repo_owner": "yaoshipu",
        "repo_name": "aslan-platform",
        "run_build": true,
        "run_deploy": true,
        "run_test": true,
        "run_distribute": true,
        "updated": "2017-02-21T15:29:16.477+08:00",
        "enabled": true
    }
]
```	

### 错误信息：

**Code:** `6808`

**Content:** `{ "message" : "List Running Tasks Error", "code": "6808", "description": "error details"}`