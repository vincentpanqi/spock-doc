---
title: 列出所有服务组信息
taxonomy:
    category: docs
---

* **URL:**

    `/stacks`

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
    [
      {
        "user_name": "fulichao",
        "stack_name": "kodo-1",
        "services":
        [
          {
            "service_name": "zoneproxy",
            "state": "DEPLOYED",
            "status": "RUNNING",
            "domains":
            [
              "fulichao.zoneproxy.kodo-1.spocktest.qiniu.io"
            ],
            "image":
            {
              "name": "spocktest/zoneproxy.kodo-1",
              "tag": "latest"
            }
          }
        ],
        "metadata": null,
        "is_deployed": false,
        "status": "PARTIALLY-RUNNING"
      },
      {
        "user_name": "fulichao",
        "stack_name": "kodo-2",
        "services":
        [
          {
            "service_name": "ptfdstg-2",
            "state": "DEPLOYED",
            "status": "RUNNING",
            "domains":
            [
              "fulichao.ptfdstg-2.kodo-2.spocktest.qiniu.io"
            ],
            "image":
            {
              "name": "spocktest/ptfdstg-2.kodo-2",
              "tag": "latest"
            }
          }
        ],
        "metadata": null,
        "is_deployed": true,
        "status": "RUNNING"
      }
    ]
    ```

* **错误信息:**

	**Code:** `625`
  	
  	**Content:** `{ "message" : "List Stack Error", "code": "625"}`