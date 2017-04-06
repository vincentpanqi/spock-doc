---
title: 删除服务组模板
taxonomy:
    category: docs
---

####注意事项

- 需要admin权限

### 请求：

    DELETE /api/templates/stacks

### 请求参数：

**Type:** `application/json`

**Content:**

```
{
	"stack_names": ["stack-2", "stack-3"]
}
```	

### 参数说明：

|参数|说明|
|---|---|
|stack_names|服务组名称，可同时删除多个服务组|

### 返回:

**Code:** `200`

### 错误信息:**

**Code:** `614`

**Content:** `{ "message" : "Delete Template Error", "code": "614", "description": "error details"}`