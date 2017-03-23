---
title: 查询产品模板
taxonomy:
    category: docs
---

### 请求:

    GET /api/templates/products/:productName

### 返回:

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
                "envs": [{"key":"value"},{"key":"value"}],
                "command": ["ls"],
                "config_paths": ["/disk1"],
                "volume_args": [
                {
                    "unit_type": "SSD1_10G",
                    "mount_path": "/disk1"
                }
                ],
                "access_points": [{
                    "type": "domain",
                    "proto": "http",
                    "ap_port": 25000,
                    "backend_port": 25000
                }],
                "test": {
                "command": "",
                "result_path": ""
                }
            }
            ],
            "init_scripts": [
            {
                "service_name": "service-1",
                "command": "urlencode"
            }
            ]
        }
        ]
    ]
}
```
### 返回参数:

详见“列出产品模版”

### 错误信息:

**Code:** `613`

**Content:** `{ "message" : "Get Template Error", "code": "613", "description": "error details"}`
