CREATE TABLE "ingredients"(
    "id" INTEGER,
    "ingredient" TEXT NOT NULL,
    "price" NUMERIC NOT NULL,
    "units" NUMERIC,
    PRIMARY KEY ("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT UNIQUE NOT NULL,
    "gluten_free" NUMERIC CHECK ("gluten_free" != 1),
    "price" NUMERIC,
    "donut_ingredients" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_ingredients") REFERENCES "ingredients" ("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts" ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);
