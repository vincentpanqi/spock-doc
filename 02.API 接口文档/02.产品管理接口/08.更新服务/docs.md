---
title: 更新服务
taxonomy:
    category: docs
---

### 请求：

    POST /api/stacks/:stackName/services/:serviceName

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
	"image": {
		"name": "new_name",
		"tag": "new_tag"
	},
	"unit_type": "2U4G"
}
```

### 请求参数说明:

|参数|描述|
|---|---|
|image|服务镜像|
|unit_type|服务容器的规格，详见“容器规格”|

### 返回:

**Code:** `200`

### 错误信息：

**Code:** `400`

**Content:** `{ "message" : "Invalid UpdateServiceArgs", "code": "400"}`

**Code:** `631`

**Content:** `{ "message" : "Update Service Error", "code": "631"}`