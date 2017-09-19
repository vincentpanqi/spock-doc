---
title: 查询服务模板
taxonomy:
    category: docs
---

#### 注意事项

- 需要`user`权限

### 请求:

    GET /api/templates/services/:name

### 返回:

**Code:** `200`

**Content:**

```
{
  "service_name": "demo",
  "revision": 4,
  "yaml": "yaml files",
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
| revision | 最新版本号 |
| yaml | 服务kube配置文件 |
| hash256 | yaml 文件内容 hash 值 |
| test | 配置测试服务额外字段 |

### 错误信息:

**Code:** `6103`

**Content:** `{ "message" : "Get Template Error", "code": "6103", "description": "error details"}`
