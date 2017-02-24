---
title: 列出所有产品信息
taxonomy:
    category: docs
---

- 产品稳定性is_stable: 当且仅当所有stacks处于running状态

* **URL:**

    `/api/products`

* **Method:**

    `GET`

* **URL Params:**

	`None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

    **Content:**

    ```
    [
        {
            "product_name": "memcached",
            "stack_deps": [
                [
                    {
                        "stack_name": "memcached",
                        "services": [
                            {
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
            ],
            "is_stable": true
        },
        {
            "product_name": "kodo",
            "stack_deps": [
                [
                    {
                        "stack_name": "memcached",
                        "services": [
                            {
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
            ],
            "is_stable": true
        }
    ]
    ```

* **Error Response:**

	**Code:** `622`
  	
  	**Content:** `{ "message" : "List Products Error", "code": "622"}`