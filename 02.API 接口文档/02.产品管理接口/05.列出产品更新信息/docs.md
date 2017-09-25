---
title: 列出产品更新信息
taxonomy:
    category: docs
---
 
### 请求：

    POST /api/revision/products

### 请求参数
	
**Type:** `application/json`

**Content:**

```
[
  {
    "product_name": "mongo-rs",
    "current_revision": 3,
    "next_revision": 3,
    "updatable": true,
    "groups_vevision": [
      {
        "group_name": "mongo-rs",
        "current_revision": 3,
        "next_revision": 3,
        "updatable": true,
        "services": [
          [
            {
              "service_name": "mongo3.2",
              "current_revision": 8,
              "next_revision": 8,
              "updatable": false
            }
          ],
          [
            {
              "service_name": "mongo-init-job",
              "current_revision": 8,
              "next_revision": 9,
              "updatable": true
            }
          ]
        ]
      }
    ]
  }
]
```

### 返回:

**Code:** `200`

### 错误信息:

**Code:** `6209`

**Content:** `{ "message" : "list products revision error", "code": "6209"}`