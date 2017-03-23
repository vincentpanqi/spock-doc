---
title: 列出服务配置项
taxonomy:
    category: docs
---

### 请求：

    GET /api/configs

### 返回：

**Code:** `200`

**Content:**

```
{
    "namespace": "qiniu",
    "vars":
    {
        "dev_zoneproxy_domain_outer": "#m_username#.zoneproxy.kodo.spocktest.qiniu.io",
        "fusion_ak": "fusion_ak",
        "fusion_sk": "fusion_sk",
        "tom_at_qiniu_ak": "4_odedBxmrAHiu4Y0Qp0HPG0NANCf6VAsAjWL_k9",
        "tom_at_qiniu_sk": "SrRuUVfDX6drVRvpyN8mv8Vcm9XnMZzlbDfvVfMe"
    },
    "listvars": null
}
```

### 返回参数说明：

|参数|描述|
|---|---|
|namespace|命名空间|
|vars|键值对|
|listvars|暂时没什么用|

### 错误信息：

**Code:** `641`

**Content:** `{ "message" : "Delete Config Service Specs Error", "code": "641"}`