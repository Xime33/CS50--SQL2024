--Find a recipe
SELECT * FROM cocktail_recipes_view
WHERE cocktail_name LIKE 'cosmopolitan';



-- Query to find a specific glass
SELECT
    name AS cocktail_name
FROM
    cocktails
WHERE
    glass_type = 'Highball';

-- Find a cocktail that includes the ingredients you have
SELECT
    *
FROM
    cocktail_ingredients_view
WHERE
    ingredient_name LIKE 'Vodka'
    OR ingredient_name LIKE 'cranberry juice'
    OR ingredient_name LIKE 'orange juice'
    OR ingredient_name LIKE 'tequila'
    OR ingredient_name LIKE 'Mint';

--Sort by category
SELECT
    cocktails.name AS cocktail_name,
    categories.name AS category_name
FROM
    cocktails
JOIN
    categories ON cocktails.category_id = categories.id
ORDER BY
    categories.name, cocktails.name;

--Insert new ingredients
--INSERT INTO ingredients ("ingredient","type")
--VALUES
    --("Peach liqueur","Liqueur"),
    --("Orange juice","Juice");

-- Change a cocktail
--UPDATE cocktails
--SET name = 'Classic Margarita'
--WHERE name = 'Margarita';

--Delete ingredients
--DELETE FROM ingredients
--WHERE ingredient = 'Mint';
