
-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses" WHERE "id" =
    (SELECT "address id" FROM "scans" WHERE "action" LIKE
    "Drop' AND "package_id" =(SELECT "id" FROM "packages" WHE
     RE "from address id" =
         ( SELECT "id" FROM "addresses" WHERE "address" LIKE
         '900 Somerville Avenue') AND "contents" LIKE 'Congratu%"));
-- *** The Devious Delivery ***
SELECT "address", "type" FROM "adddresses" WHERE "id" =
    (SELECT "to_address_id" FROM "packages" WHERE "id" =
        (SELECT "package_id" FROM "scans" WHERE "action" LIKE "drop" AND "package_id" =
            (SELECT "id" FROM "packages" WHERE "contents" LIKE 'Rubber duck')));
-- *** The Forgotten Gift ***
SELECT * FROM "drivers" WHERE "id" =(SELECT "driver_id" FROM "scans" WHERE "driver_id" LIKE '17');
