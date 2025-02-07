# Design Document

By Ximena Esparza Montiel
Video overview: <[URL HERE](https://youtu.be/-cGWrN8Jp00)>

## Scope

In this section you should answer the following questions:

* What is the purpose of your database?
   The purpose of this database is to provide an easy and efficient way to search for cocktails based on the ingredients you already have available. By simply entering the ingredients at hand, a user should be able to find which cocktails they can prepare without needing to go out and buy additional ingredients. The database aims to simplify the cocktail-making process by suggesting drinks that can be created using the current inventory of ingredients. This functionality would be particularly useful for both home bartenders and professionals looking to explore new cocktail recipes based on the ingredients they have in stock.
* Which people, places, things, etc. are you including in the scope of your database?
    The scope of this database includes essential elements for cocktail preparation such as ingredients, cocktails, glass types, and the steps involved in making each cocktail. By focusing on these entities, the database can efficiently manage the relationships between the different components of a cocktail. The glass type allows for customization in serving, while the recipe steps provide users with clear instructions on how to prepare each cocktail. These elements come together to create a comprehensive system for anyone looking to explore, search, and create cocktails.
* Which people, places, things, etc. are *outside* the scope of your database?
    the scope of this database intentionally excludes personal preferences or detailed aspects of an individual's cocktail preparation.
## Functional Requirements

In this section you should answer the following questions:

* What should a user be able to do with your database?
    Users will be able to input their current ingredients, and the database will return a list of cocktails they can prepare with those ingredients. Additionally, it will suggest cocktails that can be made by adding one or two more ingredients, offering users creative ways to expand their cocktail options without needing to purchase a lot of new ingredients. This feature will enable users to explore new drinks and make better use of what’s already in their kitchen or bar.
* What's beyond the scope of what a user should be able to do with your database?
    Sanddly the database is not designed to include every ingredient or recipe in the world. For example, it may not account for obscure or highly specialized ingredients
## Representation

### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
    The primary entities in this database include Ingredients, Cocktails, and Recipes. Ingredients represent the various components required to prepare cocktails, such as vodka, lime, and mint. Cocktails represent the drinks themselves and store information about the cocktail’s name, the ingredients it contains, and the associated recipe.
* What attributes will those entities have?
    Each entity is defined with a set of attributes that enable the database to function effectively. The Ingredients entity has attributes like id, name, and type, which help classify the ingredients and differentiate between items like fruits, spirits, or mixers. The Cocktails entity includes attributes such as id, name, ingredient_id, recipe_id, and glass_type, which allows users to associate cocktails with both their ingredients and preparation methods. The Recipe entity has an id, cocktail_id, and steps, storing the detailed instructions on how to prepare the cocktail. The Category entity holds an id and name, allowing users to filter cocktails by type.
* Why did you choose the types you did?
    The types and constraints chosen for these entities help ensure data integrity and usability. By using integers for id fields, the database maintains consistency and makes referencing easier.
* Why did you choose the constraints you did?
    To prevent duplicate data.

### Relationships
![ERD](https://drive.google.com/file/d/16LkzzUhxR_Fk46LQ1pkaZWzm7ngl5ytf/view?usp=drive_link)

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?
 I create 2 views and 1 index.
 the first view let us see which ingredients use every cocktail, the second one let us see the relationship between
 cocktails and it recipe.
 eventually i made only one index on cocktails table, specifically in the name column.

## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
    this design cannot handle more than one recipe for each cocktail, hence you cannot insert variation
* What might your database not be able to represent very well?
    the glass_type column may not be able to use standar types,
    so Highball, highball and High Ball could represent the same thing
