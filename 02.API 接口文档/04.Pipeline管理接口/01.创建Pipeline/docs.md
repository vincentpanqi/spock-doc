---
title: 创建Pipeline
taxonomy:
    category: docs
---

- 需要admin权限

### 请求：

    POST /api/pipelines

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
    "pipeline_name": "pipeline-1",
    "stack_name": "stack-1",
    "service_name": "service-1",
    "test_stack": "test",
    "test_service": "doratest",
    "deploy_env": "spock",
    "repo_owner": "yaoshipu",
    "repo_name": "aslan-platform",
    "run_build": true,
    "run_deploy_kirk": true,
    "run_deploy_cs": false,
    "run_test": true,
    "run_distribute": true,
    "enabled": true
}
```	

### 请求参数说明：

|参数|描述|
|---|---|
|pipeline_name|工作流名称|
|stack_name|更新的服务所在的服务组|
|service_name|所要更新的服务名称|
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

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid Pipeline Args", "code": "400", "description": "error details"}`

**Code:** `680`

**Content:** `{ "message" : "Upsert Pipeline Error", "code": "680", "description": "error details"}`