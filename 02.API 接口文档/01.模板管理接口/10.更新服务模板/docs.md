---
title: 更新服务模板模板
taxonomy:
    category: docs
---

## 更新服务模板模板接口

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
        "unit_type": "1U1G",
        "ports": [
            32111
        ],
        "env": ["a=b"],
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
        "access_point": {
            "type": "domain",
            "proto": "http",
            "ap_ports": [25000],
            "backend_ports": [25000]
        }
    }
    ```

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `610`
  	
  	**Content:** `{ "message" : "Upsert Template Error", "code": "610"}`