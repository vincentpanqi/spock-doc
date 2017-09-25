---
title: 更新服务镜像
taxonomy:
    category: docs
---

### 请求：

    POST /api/image

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
  "kind": "pod",
  "resource_name": "pod_name",
  "container_name": "container_name",
  "image": "image_full_name"
}
```
### 请求参数说明:

|参数|描述|
|---|---|
|kind|kube资源类型|
|resource_name|kube资源名称|
|container_name|容器名称|
|image|镜像|

### 返回:

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "invalid UpdateContainerArgs", "code": "400"}`

**Code:** `6304`

**Content:** `{ "message" : "update container image error", "code": "6304"}`