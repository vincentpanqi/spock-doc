---
title: 查询所有服务组信息接口
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

* **Success Response:**

  **Code:** `200`

  **Content:** 

  ```
  [
    {
      "user_name": "fulichao",
      "stack_name": "kodo-1",
      "services": [
        {
          "service_name": "zoneproxy",
          "state": "DEPLOYED",
          "status": "RUNNING",
          "domains": [
            "fulichao.zoneproxy.kodo-1.spocktest.qiniu.io"
          ],
          "image": {
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
      "services": [
        {
          "service_name": "ptfdstg-2",
          "state": "DEPLOYED",
          "status": "RUNNING",
          "domains": [
            "fulichao.ptfdstg-2.kodo-2.spocktest.qiniu.io"
          ],
          "image": {
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
