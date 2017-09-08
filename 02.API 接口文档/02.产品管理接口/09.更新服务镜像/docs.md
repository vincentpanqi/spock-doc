---
title: 更新服务镜像
taxonomy:
    category: docs
---

### 请求：

    POST /api/products/:productName/groups/:groupName/services/:serviceName/image

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
  "tag": "new_tag"
}
```

### 请求参数说明:

|参数|描述|
|---|---|
|tag|服务镜像Tag|

### 返回:

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "invalid UpdateServiceArgs", "code": "400"}`

**Code:** `631`

**Content:** `{ "message" : "Update Service Error", "code": "631"}`