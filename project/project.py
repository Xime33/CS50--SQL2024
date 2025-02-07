from graphviz import Digraph

# Create a new directed graph for the ERD
erd = Digraph(format='png', engine='dot')

# Define nodes for entities
entities = {
    "Cocktail": ["cocktail_id (PK)", "name", "description", "alcohol_content", "glass_type", "category_id (FK)"],
    "Ingredient": ["ingredient_id (PK)", "name", "type", "alcoholic"],
    "Recipe": ["recipe_id (PK)", "cocktail_id (FK)", "ingredient_id (FK)", "quantity", "unit"],
    "Category": ["category_id (PK)", "name"],
    "Preparation Method": ["method_id (PK)", "cocktail_id (FK)", "step_number", "instruction"]
}

# Add nodes to the graph
for entity, attributes in entities.items():
    erd.node(entity, f"{entity}\n" + "\n".join(attributes), shape='box')

# Define relationships (edges)
erd.edge("Cocktail", "Recipe", label="1 to Many")
erd.edge("Ingredient", "Recipe", label="1 to Many")
erd.edge("Cocktail", "Category", label="Many to 1")
erd.edge("Cocktail", "Preparation Method", label="1 to Many")

# Render and save the ERD
output_path = '/mnt/data/cocktail_erd'
erd.render(output_path, view=False)

output_path + '.png'
