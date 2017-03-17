---
title: 列出服务配置项
taxonomy:
    category: docs
---

* **URL:**

    `/api/configs`

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
    {
        "namespace": "qiniu",
        "vars":
        {
            "dev_zoneproxy_domain_outer": "fulichao.zoneproxy.kodo.spocktest.qiniu.io",
            "fusion_ak": "fusion_ak",
            "fusion_sk": "fusion_sk",
            "tom_at_qiniu_ak": "4_odedBxmrAHiu4Y0Qp0HPG0NANCf6VAsAjWL_k9",
            "tom_at_qiniu_sk": "SrRuUVfDX6drVRvpyN8mv8Vcm9XnMZzlbDfvVfMe"
        },
        "listvars": null
    }

* **Error Response:**

    **Code:** `641`
  	
  	**Content:** `{ "message" : "Delete Config Service Specs Error", "code": "641"}`