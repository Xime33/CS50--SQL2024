CREATE VIEW "total" AS
SELECT SUM("families"), SUM(households) AS "households", SUM(population), SUM(male), SUM(female)  FROM census;
