---
title: 列出Pipeline
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipelines

### 返回：

**Code:** `200`

**Content:** 

```
[
    {
        "pipeline_name": "pipeline-1",
        "creator": "yaoshipu",
        "stack_name": "stack-1",
        "servive_name": "service-1",
        "test_stack": "test",
        "test_service": "doratest",
        "deploy_env": "spock",
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

### 返回参数说明：

|参数|描述|
|---|---|
|pipeline_name|工作流名称|
|creator|工作流的创建者|
|stack_name|服务组名称|
|test_stack|使用的测试服务所在的服务组|
|test_service|使用的测试服务名称|
|deploy_env|服务更新的环境，即用户名|
|repo_owner|代码库的owner|
|repo_name|代码库的名称|
|run_build|是否包含编译模块|
|run_deploy|是否包含部署模块|
|run_test|是否包含测试模块|
|run_distribute|是否包含分发模块|
|enabled|是否启用pipeline|
|updated|更新时间|

### 错误信息：

**Code:** `681`

**Content:** `{ "message" : "List Pipelines Error", "code": "681", "description": "error details"}`