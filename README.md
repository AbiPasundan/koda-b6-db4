# Authentication Flow

```mermaid


---
title: Authentication Flow
---
erDiagram

    User {
        id int pk
        name varchar
        email varchar
        password varchar
        phone varchar
        address text
        photo varchar
        role enum fk
        created_at time_stamp
    }
    Role ||--|{ User : ""
    Role {
        role_id int pk
        admin varchar
        user varchar
    }
    User ||--|{ Forgot_Password : ""
    Forgot_Password {
        id int pk
        user_id int fk
    }

```
