CREATE TABLE "users" (
    "id" INTEGER,
    "firts_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools_and_universities" (
    "id" INTEGER,
    "user_id" TEXT,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "founding_year" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT UNIQUE NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "UserConnections" (
    "user1_id" INTEGER,
    "user2_id" INTEgER,
    PRIMARY KEY ("user1_id", "user2_id"),
    FOREIGN KEY ("user1_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("user2_id") REFERENCES "users" ("id")
);

CREATE TABLE "userSchools" (
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start" DATE,
    "end" DATE,
    "degree" TEXT,
    PRIMARY KEY ("user_id","school_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("school_id") REFERENCES "schools_and_universities" ("id")
);

CREATE TABLE "usersCompanies" (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start" DATE,
    "end" DATE,
    "title" TEXT,
    PRIMARY KEY ("user_id", "company_id"),
    FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
    FOREIGN KEY ("company_id") REFERENCES "companies" ("id")

);

