---
title: 列出产品
taxonomy:
    category: docs
---

#### 注意事项

- 需要`user`权限

### 请求：

    GET /api/products

### 返回：

**Code:** `200`

**Content:**

```
[
  {
    "product_name": "portal-v4",
    "groups": ["portal-v4", "kodo"],
    "status": "Running"
  }
]
```

### 参数说明:

- `groups` 为服务组依赖, 外层数组为顺序执行，内层数组为并行执行
- `status` 为总体运行状态, 状态集包括 
  - `Running` 运行良好
  - `Unstable` 运行不稳定, 部分服务未正常运行
  - `Error` 内部错误

### 错误信息:

**Code:** `6201`

**Content:** `{ "message" : "List Product Names Error", "code": "6201"}`