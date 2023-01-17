SET IDENTITY_INSERT [dbo].[Category] ON 
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (1,N'Vegetables')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (2,N'Meats')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (3,N'Dairy')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (4,N'Condiments')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (5,N'Herbs & Spices')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (6,N'Grains')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (7,N'Fish & Seafood')
INSERT INTO [dbo].[Category] ([Id],[Name]) VALUES (8,N'Fruit')

SET IDENTITY_INSERT [dbo].[Category] OFF 

SET IDENTITY_INSERT [dbo].[Ingredients] ON 
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (1,N'Tomato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (2,N'Potato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (3,N'Milk', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (4,N'Cottage Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (5,N'Cheddar Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (6,N'Egg', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (7,N'Curd Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (8,N'Cas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (9,N'Farmer Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (10,N'Chhena', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (11,N'Fromage Blanc', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (12,N'Queso Fresco', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (13,N'Paneer Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (14,N'Ricotta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (15,N'Mozzarella', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (16,N'Halloumi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (17,N'Brie', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (18,N'Emmental', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (19,N'Gouda', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (20,N'Edam', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (21,N'Parmesan', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (22,N'Beef Steak', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (23,N'Minced Beef Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (24,N'Minced Pork Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (25,N'Chicken Breast', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (26,N'Chicken Wing', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (27,N'Pork Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))


INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (28,N'Carrot', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (29,N'Mushroom', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (30,N'Salad', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (31,N'Cabbage', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (32,N'Cucumber', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (33,N'Corn', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (34,N'Aioli', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (35,N'Ketchup', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (36,N'Mayo', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (37,N'Mustard', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (38,N'Ranch', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (39,N'Wasabi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (40,N'Honey Mustard', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (41,N'Rosemary', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (42,N'Basil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (43,N'Bay Leaf', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (44,N'Celery Seeds', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (45,N'Chives', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (46,N'Cilantro', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (47,N'Oregano', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (48,N'Parsley', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (49,N'Sourdough Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (50,N'Baguette', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (51,N'Brioche', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (52,N'Focaccia', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (53,N'Ciabatta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (54,N'Rye Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (55,N'Multigrain Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (56,N'Tortillia', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (57,N'Pita', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (58,N'Whole Grain Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (59,N'Salmon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (60,N'Trout', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (61,N'Tuna', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (62,N'Sardines', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (63,N'Sword Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (64,N'Cod Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (65,N'Butter Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (66,N'Dorada', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (67,N'Makarel', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (68,N'Calamari', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (69,N'Octopus', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (70,N'Shrimps', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (71,N'Mussels', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (72,N'Oysters', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (73,N'Lobster', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Seafood'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (74,N'Lamb', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (75,N'Duck', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (76,N'Rabbit', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (77,N'Peas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (78,N'Green beans', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (79,N'Onion', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (80,N'Garlic', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (81,N'Zuccinni', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (82,N'Radishes', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (83,N'Beetroot', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (84,N'Bell Pepper', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (85,N'Cauliflower', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (86,N'Eggplant', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (87,N'Strawberries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (88,N'Blueberries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (89,N'Blackberries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (90,N'Raspberries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (91,N'Gooseberries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (92,N'Apples', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (93,N'Pears', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (94,N'Plums', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (95,N'Apricots', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (96,N'Peaches', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (97,N'Cherries', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (98,N'Watermelon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (99,N'Oranges', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (100,N'Lemons', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (101,N'Kiwi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (102,N'Bananas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (103,N'Litchi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'))

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (104,N'SunFlower Oil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (105,N'Salt', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (106,N'Ground Pepper', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (107,N'Soya Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (108,N'Water', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (109,N'Flour', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (110,N'Pasta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (111,N'Salami', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (112,N'Olives', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (113,N'Tomato Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (114,N'Yeast', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))

SET IDENTITY_INSERT [dbo].[Ingredients] OFF

SET IDENTITY_INSERT [dbo].[Subscription] ON 
INSERT INTO [dbo].[Subscription] ([Id],[Name], [Price]) VALUES (1,N'Free')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (2,N'Monthly')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (3,N'Yearly')

SET IDENTITY_INSERT [dbo].[Subscription] OFF 

SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name]) VALUES (1,'1.peel and wash the potatos and the onion. 2. Next you need to chop thinly the onion. 3. fry the onion untill golden. 4. fry the potatos untill medium done. 5. roughtly smash the potatos, and mix them with the onion and eggs and season it to taste. 6. pour the mixture into a frying pan and cook it at low-medium heat for 7 minutes on each side.',
N'Free', 'Spanish Tortilla' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name]) VALUES (2,'1.peel and wash the potatos. 2. Next you need slice them into french fries strips.
3. fry the potatos untill medium done. 4. place them in an oven pan and put them in the preheated oven at 180 degrees celsius. 5.Take them out of the oven and sprinkle grated cheesse over them, then put them back in the oven for 5 more minutes.',
N'Free', 'Grated Potatos' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name]) VALUES (3,'1.Clean the skin and the bones if any. 2. Dry the salmon with a kitchen paper towel. 3. Cut the salmon into slices 0.5 cm thick. 4. Enjoy with some soya sauce',
N'Free', 'Salmon Sashimi' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name]) VALUES (4,'1. in a bowl mix the flour with tghe water, salt, yeast, until you get a soft dough. 2. let it sit in the fridge for 30 minutes. 3. roll the dough on a clean flat surface into a round shape of 0.4 cm thick. 4. place the rolled dough on a baking sheet and spread the tomato sauce, salami, mushrooms, olives and cheesse. 5. put the pizza in the preheated oven at 210 degrees Celsius for 20 minutes',
N'Monthly', 'HomeMade Pizza' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name]) VALUES (5,'1. In a wok or big pan place the beef and cook it untill all the juices evaporate. 2. Pour the tomato sauce, salt, ground pepper and basil leaves and cook for 5 more minutes. 3. Place a big enough pot of water on the stove and bring it to a boil, then add the pasta of choice and boil in until aldente. 4. Strain the pasta and then pour the beef sauce over it and mix well. 5. Give it a little zing with a sprinkle of parmesan cheesse. Enjoy!',
N'Yearly', 'Bolognese Pasta' )

SET IDENTITY_INSERT [dbo].[Recipes] OFF 


SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] ON 
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (1, 2, 1)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (2, 79, 1)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (3, 104, 1)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (4, 6, 1)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (5, 105, 1)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (6, 2, 2)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (7, 15, 2)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (8, 104, 2)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (9, 105, 2)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (10, 59, 3)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (11, 107, 3)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (12, 109, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (13, 105, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (14, 114, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (15, 108, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (16, 111, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (17, 29, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (18, 112, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (19, 113, 4)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (20, 110, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (21, 23, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (22, 113, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (23, 42, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (24, 105, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (25, 106, 5)
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId]) VALUES (26, 21, 5)

SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] OFF