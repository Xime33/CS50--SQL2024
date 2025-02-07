CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins" (
    "passenger_id" INTEGER,
    "date_and_time" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "flight" INTEGER NOT NULL,
    FOREIGN KEY ("passenger_id") REFERENCES "passengers" ("id")
);

CREATE TABLE "airlines" (
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A', 'B', 'C','D','E','F','T'))
);

CREATE TABLE "flights" (
    "number" INTEGER NOT NULL,
    "airline_name" TEXT,
    "departing_from" TEXT NOT NULL,
    "heading_to" TEXT NOT NULL,
    "departure_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "arrival_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY ("airline_name") REFERENCES "airlines" ("name")
)
