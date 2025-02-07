CREATE DATABASE linkedin;
USE linkedin;
CREATE TABLE users(
    "id" INT AUTO_INCREMENT,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "username" VARCHAR (255) UNIQUE NOT NULL,
    "password" CHAR (128) NOT NULL,
    PRIMARY KEY
);

CREATE TABLE schools(
    "id" INT AUTO_INCREMENT,
    "name" VARCHAR (255) NOT NULL,
    "school_type" ENUM ('primary','secondary','Higher education') NOT NULL,
    "location" VARCHAR (255) NOT NULL,
    "founding_year" DATE,
    PRIMARY KEY ("id")
);

CREATE TABLE companies(
    "id" INT AUTO_INCREMENT,
    "name" VARCHAR (255) NOT NULL,
    "industry" ENUM ('Technology','Education','Business') NOT NULL,
    "location" VARCHAR (255) NOT NULL,
    PRIMARY KEY ("id")
);

CREATE Connections(
    "user1_id" INT,
    "user2_id" INT,
    PRIMARY KEY ("user1_id","user2_id"),
    FOREIGN KEY ("user1_id") REFERENCES users("user_id"),
    FOREIGN KEY ("user2_id") REFERENCES users("user_id"),
);

CREATE TABLE "userSchools" (
    "user_id" INT,
    "school_id" INT,
    "start" DATE,
    "end" DATE,
    "degree" VARCHAR (255),
    PRIMARY KEY ("user_id","school_id"),
    FOREIGN KEY ("user_id") REFERENCES users ("id"),
    FOREIGN KEY ("school_id") REFERENCES schools ("id")
);

CREATE TABLE "usersCompanies" (
    "user_id" INT,
    "company_id" INT,
    "start" DATE,
    "end" DATE,
    "title" VARCHAR (255),
    PRIMARY KEY ("user_id", "company_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("company_id") REFERENCES "companies" ("id")

);
