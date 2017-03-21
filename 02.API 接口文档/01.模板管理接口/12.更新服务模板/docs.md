---
title: 更新服务模板
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/templates/stacks/:stackName/services/:serviceName`

* **Method:**

    `POST`

* **URL Params:**

    `None`

* **Data Params:**

    ```
    {
        "service_name": "service-2",
        "image": {
            "name": "service-1",
            "tag": "test"
        },
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
    ```

* **返回:**

	**Code:** `200`

* **错误信息:**

	**Code:** `611`
  	
  	**Content:** `{ "message" : "Update Template Error", "code": "611", "description": "error details"}`