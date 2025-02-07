
INSERT INTO recipes ("cocktail_id","steps")
 VALUES (28," Pour in a Shaker:
 Ice, 5-6 Mint leaves, 1 1/2 oz Vodka,
 1/2 oz Honey, 1/2 oz Lime juice,
 3/4 oz Lichi syrup.
  - Shake
  - 2 oz Sparkling water
  - Garnish: Mint leaves");


UPDATE cocktails
SET recipe_id = "1","2","3";

INSERT INTO ingredients ("ingredient","type")
VALUES
("Coconut milk","Coconut");

INSERT INTO ingredients ("ingredient","type")
VALUES
("Peach liqueur","Liqueur"),
("Orange juice","Juice"),
("Ginger beer","Beer"),
("Mint","Herb"),
("Coffee liqueur","Liqueur"),
("Milk","Dairy product"),
("Tequila","Distilled"),
("Grenadina","Syrup"),
("Prosecco","Sparkling"),
("Aperol","Liqueur"),
("Sparkling water","Sparkling"),
("Gin","Distilled"),
("Simple syrup","Syrup"),
("Egg white","Egg"),
("Cranberries","Berry"),
("Rosemary","Herb"),
("Rum","Distilled"),
("Blue curaçao","Liqueur"),
("Sprite", "Soda"),
("Salt","Salt"),
("Agave nectar","Syrup"),
("Sugar","Sugar"),
("Green apple liqueur","Liqueur"),
("Green apple","Fruit"),
("Coconut liqueur","Liqueur"),
("Pineapple juice","Juice"),
("Coconut cream", "Cream"),
("Condensed milk","Dairy product"),
("Pineapple","Fruit"),
("Cherry","Berry"),
("Espresso","Coffee"),
("Dry vermouth","Wine"),
("Olives","Olive"),
("43 liqueur","Liqueur"),
("Basil","Herb"),
("Raspberries","Berry"),
("Tonic water","Sparkling"),
("Peppermint","Herb"),
("Absolut raspberry","Distilled"),
("Creme de mûre","Wine"),
("Honey","Honey"),
("Lichi syrup","Syrup");

INSERT INTO cocktail_ingredient ("COCKTAIL_id","INGREDIENT_id")
VALUES
(28,1),
(28,10),
(28,2),
(28,47),
(28,5),
(28,48),
(28,17);
(28,36);
(15,6);

CREATE VIEW "cocktail_and_ingredients" AS
SELECT name, ingredients.ingredient FROM cocktails
JOIN ingredients
