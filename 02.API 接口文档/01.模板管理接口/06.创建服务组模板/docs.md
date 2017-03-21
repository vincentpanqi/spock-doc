---
title: 创建服务组模板
taxonomy:
  category: docs
---

- 需要管理员权限

- **请求:**

  `POST /api/templates/stacks`


- **请求参数:**

  **Type:** `application/json`

  **Content:**

  ```
  {
        "stack_name": "stack-2",
        "internal": false,
        "init_scripts": [
            {
            "service_name": "service-2",
            "command": "urlencode"
            }
        ],
        "services": [
            {
                "service_name": "service-2",
                "unit_type": "1U1G",
                "envs": [{"key":"value"},{"key":"value"}],
                "command": ["ls"],
                "config_paths": ["/disk1"],
                "volume_args": [
                    {
                    "mount_path": "/disk1",
                    "unit_type": "SSD1_10G"
                    }
                ],
                "image": {
                    "name": "service-1",
                    "tag": "test"
                },
                "access_points": [{
                  "type": "domain",
                  "proto": "http",
                  "ap_port": 25000,
                  "backend_port": 25000
                }],
                "test": {
                    "command": "ls",
                    "result_path": "/disk1"
                }
            }
        ]
    }
  ```
- **服务组参数:**
|参数|描述|
|---|---|
|stack_name|服务组名称，全局唯一|
|internal|是否为内部服务，暂无使用场景|
|init_scripts|初始化脚本，服务创建成功后执行|
|services|具体服务配置，详细配置说明见下表|

|参数|描述|
|---|---|
|service_name|服务名称，全局唯一|
|unit_type|服务的规格|
|init_scripts|初始化脚本，服务创建成功后执行|
|services|具体服务配置，详细配置说明见下表|


- **返回:**

  **Code:** `200`

- **错误信息:**

  **Code:** `400`

  ```
  **Content:** `{ "message" : "Invalid StackTemplateArgs", "code": "400", "description": "error details"}`
  ```

  **Code:** `610`

  ```
  **Content:** `{ "message" : "Create Template Error", "code": "610", "description": "error details"}`
  ```
