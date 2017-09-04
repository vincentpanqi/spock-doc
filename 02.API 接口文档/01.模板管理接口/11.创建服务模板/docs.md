---
title: 创建服务模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`admin`权限
- 模版分成两类部署服务模版和测试模版
- `test`字段是测试服务专属字段，部署服务不需要

### 请求：

    POST /api/templates/services

### 请求参数：

```
{
  "service_name": "demo",
  "yaml": "yaml files",
  "image": {
    "name": "demo",
    "tag": "1.0"
  },
  "test": {
    "command": "demo command",
    "result_path": "/test/result/path"
  }
}
```

### 参数说明:

| 参数 | 描述 |
|-----|------|
| service_name | 服务名称，全局唯一 |
| yaml | 服务kube配置文件 |
| test | 配置测试服务额外字段 |

### 返回：

**Code:** `200`

### 错误信息:

**Code:** `6101`

**Content:** `{ "message" : "Update Template Error", "code": "6101", "description": "error details"}`