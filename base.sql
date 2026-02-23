CREATE TYPE ROLE AS ENUM ('admin', 'user');
CREATE TABLE "user" (
    "id" BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY UNIQUE,
    "name" VARCHAR(30),
    "email" VARCHAR(100),
    "password" VARCHAR(100),
    "phone" VARCHAR(30),
    "address" TEXT,
    "photo" VARCHAR(30),
    "role" ROLE,
    "created_at" TIMESTAMP
);
