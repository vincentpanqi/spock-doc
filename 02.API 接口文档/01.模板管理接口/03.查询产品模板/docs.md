---
title: 查询产品模板
taxonomy:
    category: docs
---

* **URL:**

    `/api/templates/products/:productName`

* **Method:**

    `GET`

* **URL Params:**

    `None`

* **Data Params:**

    `None`

* **返回:**

	**Code:** `200`

	**Content:** 
	
	```
    {
        "product_name": "stack-single",
        "enabled": true,
        "stack_deps": [
            [
            {
                "stack_name": "stack-1",
                "internal": false,
                "services": [
                {
                    "service_name": "service-1",
                    "image": {
                    "name": "service-1",
                    "tag": "test"
                    },
                    "unit_type": "1U1G",
                    "envs": ["a=b"],
                    "command": ["ls"],
                    "config_paths": ["/disk1"],
                    "volume_args": [
                    {
                        "unit_type": "SSD1_10G",
                        "mount_path": "/disk1"
                    }
                    ],
                    "access_point": {
                        "type": "domain",
                        "proto": "http",
                        "ap_ports": [25000],
                        "backend_ports": [25000]
                    },
                    "test": {
                    "command": "",
                    "result_path": ""
                    }
                }
                ],
                "init_scripts": [
                {
                    "service_name": "service-1",
                    "commands": []
                }
                ]
            }
            ]
        ]
    }
    ```
* **错误信息:**

	**Code:** `612`
  	
  	**Content:** `{ "message" : "Get Template Error", "code": "612", "description": "error details"}`