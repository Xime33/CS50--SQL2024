CREATE TABLE IF NOT EXISTS "ingredients"(
    "id" INTEGER,
    "ingredient" TEXT NOT NULL,
    "type" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "recipes"(
    "id" INTEGER,
    "cocktail_id" INTEGER,
    "steps" TEXT NOT NULL,
    PRIMARY KEY ("id")
    FOREIGN KEY ("cocktail_id") REFERENCES "cocktails" ("id")
);
CREATE TABLE categories (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "cocktails" (
    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    glass_type TEXT,
    category_id TEXT,
    recipe_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (recipe_id) REFERENCES recipes(id)
);
CREATE TABLE cocktail_ingredient_backup(
  COCKTAIL_id INT,
  INGREDIENT_id INT
);
CREATE TABLE cocktail_ingredient (
    COCKTAIL_id INTEGER,
    INGREDIENT_id INTEGER,
    FOREIGN KEY (COCKTAIL_id) REFERENCES cocktails(id),
    FOREIGN KEY (INGREDIENT_id) REFERENCES ingredients(id)
);
CREATE VIEW cocktail_ingredients_view AS
SELECT
    cocktails.name AS cocktail_name,
    ingredients.ingredient AS ingredient_name
FROM
    cocktail_ingredient
JOIN
    cocktails ON cocktail_ingredient.COCKTAIL_id = cocktails.id
JOIN
    ingredients ON cocktail_ingredient.INGREDIENT_id = ingredients.id
/* cocktail_ingredients_view(cocktail_name,ingredient_name) */;
CREATE VIEW cocktail_recipes_view AS
SELECT
    cocktails.name AS cocktail_name,
    recipes.steps AS recipe_steps
FROM
    recipes
JOIN
    cocktails ON recipes.cocktail_id = cocktails.id
/* cocktail_recipes_view(cocktail_name,recipe_steps) */;

CREATE INDEX "cocktails_name" ON cocktails ("name");
