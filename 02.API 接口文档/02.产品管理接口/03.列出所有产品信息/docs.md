---
title: 列出所有产品信息
taxonomy:
    category: docs
---

#### 注意事项

- 产品状态有如下3种:
    Successful: 运行良好
    Unstable:   运行不稳定（部分stack/service挂了）
    Failed:     创建失败

### 请求：

    GET /api/products

### 返回：

**Code:** `200`

**Content:**

```
[
    {
        "product_name": "memcached",
        "status": "successful",
        "stack_deps": [
            [
                {
                    "stack_name": "memcached",
                    "services": [
                        {
                            "created": 1504064707,
                            "updated": 1504064707,
                            "service_name": "memcached",
                            "state": "DEPLOYED",
                            "status": "RUNNING",
                            "domains": [],
                            "image": {
                                "name": "spocktest/memcached",
                                "tag": "latest"
                            }
                        }
                    ],
                    "metadata": null,
                    "is_deployed": true,
                    "status": "RUNNING"
                }
            ]
        ]
    },
    {
        "product_name": "kodo",
        "status": "failed",
        "stack_deps": [
            [
                {
                    "stack_name": "memcached",
                    "services": [
                        {
                            "created": 1504064707,
                            "updated": 1504064707,
                            "service_name": "memcached",
                            "state": "DEPLOYED",
                            "status": "RUNNING",
                            "domains": [],
                            "image": {
                                "name": "spocktest/memcached",
                                "tag": "latest"
                            }
                        }
                    ],
                    "metadata": null,
                    "is_deployed": true,
                    "status": "RUNNING"
                }
            ],
            [
                {
                    "stack_name": "kodo",
                    "services": [
                        {
                            "created": 1504064707,
                            "updated": 1504064707,
                            "service_name": "io",
                            "state": "DEPLOYED",
                            "status": "RUNNING",
                            "domains": [
                                "fulichao.io.kodo.spocktest.qiniu.io"
                            ],
                            "image": {
                                "name": "spocktest/io",
                                "tag": "test"
                            }
                        }
                    ],
                    "metadata": null,
                    "is_deployed": true,
                    "status": "RUNNING"
                }
            ]
        ]
    }
]
```

### 错误信息:

**Code:** `622`

**Content:** `{ "message" : "List Products Error", "code": "622"}`