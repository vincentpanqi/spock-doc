---
title: 查询服务模板
taxonomy:
    category: docs
---

### 请求:

    GET /api/templates/stacks/:stackName/services/:serviceName

### 返回:

**Code:** `200`

**Content:**

```
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
    "access_points": [{
        "type": "domain",
        "proto": "http",
        "ap_port": 25000,
        "backend_port": 25000
    }],
    "test": {
        "command": "",
        "result_path": "",
        "threshold": 0
    }
}
```

### 返回参数说明：

详见“创建服务组模版”

### 错误信息:

**Code:** `613`

**Content:** `{ "message" : "Get Template Error", "code": "613", "description": "error details"}`
