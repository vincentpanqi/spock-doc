---
title: 4.3 列出Pipeline
taxonomy:
    category: docs
---

### 请求：

    GET /api/pipelines
    GET /api/v2/pipelines

### 返回：

**Code:** `200`

**Content:** 

```
Pipeline V1

[
    {
        "pipeline_name": "pipeline-1",
        "creator": "yaoshipu",
        "stack_name": "stack-1",
        "service_name": "service-1",
        "test_stack": "test",
        "test_service": "doratest",
        "test_threshold": 0,
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
]
```

```
Pipeline V2

[
  {
    "name": "test-pipeline",
    "description": "demo desc",
    "update_by": "",
    "update_time": 1506652535,
    "enabled": true,
    "schedule": "*/10 * * * * *",
    "sub_tasks": [
      {
        "branch": "dev",
        "commit_id": "456",
        "commit_message": "commit message",
        "image": "image full name",
        "package_file": "build service kodo package file",
        "pull_request_id": 1234,
        "repo_name": "aslan-platform",
        "repo_owner": "qbox",
        "timeout": 7200,
        "type": "build"
      },
      {
        "container_name": "spock-backend",
        "group_name": "spock-kube",
        "image": "same as previous build task value",
        "package_file": "same as previous build task value",
        "product_name": "spock-kube",
        "service_name": "spock-backend",
        "timeout": 500,
        "type": "deploy"
      },
      {
        "command": "command to run test",
        "container_name": "spock-backend-test",
        "group_name": "spock-test",
        "product_name": "spock-kube",
        "result_path": "test result path",
        "service_name": "spock-backend-test",
        "threshold": 90,
        "timeout": 3600,
        "type": "testing"
      },
      {
        "dist_host": "jumpbox",
        "timeout": 600,
        "type": "distribute"
      },
      {
        "timeout": 600,
        "type": "jira"
      }
    ]
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

**Code:** `6802`

**Content:** `{ "message" : "list pipeline error", "code": "6802", "description": "error details"}`
