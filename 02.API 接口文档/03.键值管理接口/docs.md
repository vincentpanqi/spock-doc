---
title: 键值管理接口
taxonomy:
    category: docs
---

* **Magic Variable List:**

    `#m_username#` : 子app名称

* **Magic Variable List:**
    
    服务端口和IP地址键值命名方式

    端口     `{{.<stack>_<service>_<proto>_port}}` 

    IP地址     `{{.<stack>_<service>_ip}}` 

    eg.kodo io 服务公网ip，http协议的端口   `{{.kodo_io_http_port}}` 

