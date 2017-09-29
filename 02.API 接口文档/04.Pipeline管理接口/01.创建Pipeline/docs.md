---
title: 4.1 创建 Pipeline
taxonomy:
    category: docs
---

### 注意事项

- 需要admin权限

### 请求：

    POST /api/pipelines
    POST /api/v2/pipelines

### 请求参数：

**Type:** `application/json`

**Content:**

```
Pipeline V1

{
    "pipeline_name": "pipeline-1",
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
    "enabled": true
}
```

```
Pipeline V2	

{
  "name": "test-pipeline",
  "description": "demo desc",
  "enabled": true,
  "schedule": "*/10 * * * * *",
  "sub_tasks": [
    {
      "type": "build",
      "repo_owner": "qbox",
      "repo_name": "aslan-platform",
      "branch": "dev",
      "pull_request_id": 123,
      "commit_id": "456",
      "commit_message": "commit message",
      "image": "image full name",
      "package_file": "build service kodo package file",
      "timeout": 7200
    },
    {
      "type": "deploy",
      "product_name": "spock-kube",
      "group_name": "spock-kube",
      "service_name": "spock-backend",
      "container_name": "spock-backend",
      "image": "same as previous build task value",
      "package_file": "same as previous build task value",
      "timeout": 600
    },
    {
      "type": "testing",
      "product_name": "spock-kube",
      "group_name": "spock-test",
      "service_name": "spock-backend-test",
      "container_name": "spock-backend-test",
      "threshold": 90,
      "command": "command to run test",
      "result_path": "test result path",
      "timeout": 3600
    },
    {
      "type": "distribute",
      "dist_host": "jumpbox",
      "timeout": 600
    },
    {
      "type": "jira",
      "timeout": 600
    }
  ]
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
|run_deploy_cs|是否包含cs部署模块|
|run_test|是否包含测试模块|
|run_distribute|是否包含分发模块|
|enabled|是否启用pipeline|

### 返回：

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "invalid pipeline args", "code": "400", "description": "error details"}`

**Code:** `6800`

**Content:** `{ "message" : "create pipeline error", "code": "6800", "description": "error details"}`
