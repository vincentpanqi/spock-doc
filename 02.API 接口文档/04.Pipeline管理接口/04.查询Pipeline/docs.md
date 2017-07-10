---
title: 查询Pipeline
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipelines/:name

### 返回：

**Code:** `200`

**Content:** 

```
{
    "pipeline_name": "pipeline-1",
    "creator": "yaoshipu",
    "stack_name": "stack-1",
    "service_name": "service-1",
    "test_stack": "test1",
    "test_service": "doratest",
    "deploy_env": "spock",
    "repo_owner": "yaoshipu",
    "repo_name": "aslan-platform",
    "run_build": true,
    "run_deploy": true,
    "run_deploy_cs": false,
    "run_test": true,
    "run_distribute": true,
    "updated": 1490080434,
    "enabled": true
}
```	

### 错误信息：

**Code:** `682`

**Content:** `{ "message" : "Get Pipeline Error", "code": "682", "description": "error details"}`