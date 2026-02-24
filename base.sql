-- drop table "user", "role";

CREATE TABLE "user_library" (
    "id" BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY UNIQUE,
    "name" VARCHAR(30),
    "email" VARCHAR(100),
    "password" VARCHAR(100),
    "phone" VARCHAR(30),
    "address" TEXT,
    "photo" VARCHAR(30),
    "user_role" VARCHAR(30),
    "created_at" TIMESTAMP
);

CREATE TABLE "roles" (
    "role_id" BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY UNIQUE,
    "admin" VARCHAR(30) UNIQUE
    "user" VARCHAR(30) UNIQUE
);
CREATE TABLE "user_roles" (
    "user_role_id" BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY UNIQUE,
    "user_id" int UNIQUE
    "role_id" int UNIQUE
);

CREATE TABLE "forgot_password" (
    "forgot_password_id" BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY UNIQUE,
    "user_id" INT UNIQUE
);

ALTER TABLE "user" ADD CONSTRAINT fk_role FOREIGN KEY (user_role) REFERENCES role(name);
ALTER TABLE "forgot_password" ADD CONSTRAINT fk_password FOREIGN KEY (user_password) REFERENCES name(password);