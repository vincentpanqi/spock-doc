---
title: 检查服务Yaml
taxonomy:
    category: docs
---

#### 注意事项

### 请求：

    POST /api/templates/validate

### 请求参数:

**Type:** `application/json`

**Content:**

```
{
  "yaml": "yaml to validate"
}
```
### 返回:

**Code:** `200`

**Content:**

```
{

  "yaml": "parsed yaml"
}
```

### 错误信息:**

**Code:** `6104`

**Content:** ``