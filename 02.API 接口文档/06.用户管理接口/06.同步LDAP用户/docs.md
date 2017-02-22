---
title: 同步LDAP用户
taxonomy:
    category: docs
---

- 需要管理员权限

* **URL:**

    `/api/users/ldap/sync`

* **Method:**

    `GET`

* **URL Params:**

    `None`

* **Data Params:**

    `None`

* **Success Response:**

	**Code:** `200`

* **Error Response:**

	**Code:** `603`
  	
  	**Content:** `{ "message" : "Sync LDAP error", "code": "603", "description": "error details"}`
