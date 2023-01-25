SET IDENTITY_INSERT [dbo].[Category] ON 
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (1,N'Vegetables', N'https://images.unsplash.com/photo-1627888086271-6c8546b2977c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1319&q=80' )
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (2,N'Meats', N'https://images.unsplash.com/photo-1611038333075-2efd28705f42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1249&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (3,N'Dairy', N'https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (4,N'Condiments', N'https://images.unsplash.com/photo-1472476443507-c7a5948772fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (5,N'Herbs & Spices', N'https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (6,N'Grains', N'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (7,N'Fish & Seafood', N'https://images.unsplash.com/photo-1499125562588-29fb8a56b5d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink]) VALUES (8,N'Fruit', N'https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')

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
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (115,N'Bacon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (116,N'Celery', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (117,N'Beef stock', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId]) VALUES (118,N'Bay leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'))



SET IDENTITY_INSERT [dbo].[Ingredients] OFF

SET IDENTITY_INSERT [dbo].[Subscription] ON 
INSERT INTO [dbo].[Subscription] ([Id],[Name], [Price]) VALUES (1,N'Free')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (2,N'Monthly')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (3,N'Yearly')

SET IDENTITY_INSERT [dbo].[Subscription] OFF 

SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (1,'1. Put a large non-stick frying pan on a low heat. Cook the onion slowly in the oil and butter until soft but not brown – this should take about 15 mins. Meanwhile, peel the tomatoes (if using) by scoring the skins with a cross, putting them in a bowl and pouring over just-boiled water. Drain the water after 2-3 mins and the skins will peel away easily. You can then coarsely grate them.\\2. Add the potatoes to the pan, then cover and cook for a further 15-20 mins, stirring occasionally to make sure they fry evenly. When the potatoes are soft and the onion is shiny, crush 2 garlic cloves and stir in, followed by the beaten eggs.\\3. Put the lid back on the pan and leave the tortilla to cook gently. After 20 mins, the edges and base should be golden, the top set but the middle still a little wobbly. To turn it over, slide it onto a plate and put another plate on top, turn the whole thing over and slide it back into the pan to finish cooking.\\4.Once cooked, transfer to a plate and serve the tortilla warm or cold, scattered with the chopped parsley. To accompany the tortilla, take slices of warmed baguette, stab all over with a fork and rub with the remaining garlic, pile on the grated tomatoes and season with sea salt and a drizzle of olive oil.',
0, N'Spanish Tortilla', N'https://images.unsplash.com/photo-1639669794539-952631b44515?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1221&q=80' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (2,'1. Peel the potatoes and cut into 1cm-thick batons. Put into a bowl of cold water and leave to soak for at least 2 hrs to remove the starch from the potatoes – this will help them crisp while frying.\\2.Drain the potatoes well and pat dry with kitchen paper. Fill a deep pan no more than a third full with oil and heat to 140C, or until a cube of bread dropped in browns in 60 seconds. Fry the French fries in batches for 6 mins per batch until golden straw-coloured, cooked through and lightly crisp. Drain well on kitchen paper.\\3.Turn the heat up until the oil reaches 180C, or a cube of bread browns in 30 seconds. Fry the French fries again for 2-3 mins per batch until lightly golden and really crisp. Drain on kitchen paper and immediately season with sea salt.',
0, N'French Fries', N'https://images.unsplash.com/photo-1568226189293-77924f3f10c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (3,'1. Clean the skin and the bones if any.\\2. Dry the salmon with a kitchen paper towel.\\3. Cut the salmon into slices 0.5 cm thick.\\4. Enjoy with some soya sauce',
0, N'Salmon Sashimi' , N'https://images.unsplash.com/photo-1599570340442-844ea773ef96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (4,'1. Mix together the yeast and sugar with 250ml warm water and leave to sit for 10 mins. Place half the flour in a table-top mixer with a dough hook, pour in the yeast mixture and beat at medium speed for 10 mins (or mix in a bowl, then knead with oiled hands in the bowl for 5-10 mins).\\2.Leave somewhere warm for 10 more mins, then add the remaining flour and oil. Beat or knead to a dough for a further 5 mins. Put in a well-oiled bowl, cover with a cloth and place somewhere warm to double in size – about 1½ hrs. \\3.For the sauce, heat the oil in a pan over a moderate heat. Add the onion and cook for 3 mins, stirring constantly. Add the garlic, 1 tsp sea salt and 1 tsp ground black pepper and cook for 2 mins more. Add the tomatoes and bring to the boil, then reduce the heat and simmer for a good 20 mins, stirring occasionally.\\4.Once your dough has doubled in size, slap it down on a lightly floured surface and knead for 4 mins until soft but not too elastic. Divide into 6 pieces, roll into balls and leave to rest for 10 mins. Heat oven to the highest temperature possible (210C fan in the Good Food test kitchen) and place a flat baking sheet in the oven.\\5. With a well-floured rolling pin, roll out each ball of dough as thinly as possible. Remove the baking sheet from the oven, oil or dust with flour, then carefully transfer the dough base onto it. Spread over some of the tomato sauce, then the cheese, salami, mushrooms and any toppings you desire.',
1, N'HomeMade Pizza', N'https://images.unsplash.com/photo-1585778718569-2efde6c55c80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (5,'1. Put a large saucepan on a medium heat and add 1 tbsp olive oil.\\2. Add 4 finely chopped bacon rashers and fry for 10 mins until golden and crisp.\\3. Reduce the heat and add the 2 onions, 2 carrots, 2 celery sticks, 2 garlic cloves and the leaves from 2-3 sprigs rosemary, all finely chopped, then fry for 10 mins. Stir the veg often until it softens.\\4. Increase the heat to medium-high, add 500g beef mince and cook stirring for 3-4 mins until the meat is browned all over.\\5. Add 2 tins plum tomatoes, the finely chopped leaves from ¾ small pack basil, 1 tsp dried oregano, 2 bay leaves, 2 tbsp tomato purée, 1 beef stock cube, 1 deseeded and finely chopped red chilli (if using), 125ml red wine and 6 halved cherry tomatoes. Stir with a wooden spoon, breaking up the plum tomatoes.\\ 6. Bring to the boil, reduce to a gentle simmer and cover with a lid. Cook for 1 hr 15 mins stirring occasionally, until you have a rich, thick sauce.\\7. Add the 75g grated parmesan, check the seasoning and stir.\\8. When the bolognese is nearly finished, cook 400g spaghetti following the pack instructions.\\9. Drain the spaghetti and either stir into the bolognese sauce, or serve the sauce on top. Serve with more grated parmesan, the remaining basil leaves and crusty bread, if you like.',
1, N'Bolognese Pasta', N'https://images.unsplash.com/photo-1600803734709-83f30a78e312?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80' )

SET IDENTITY_INSERT [dbo].[Recipes] OFF 


SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] ON 
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (1, 2, 1, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (2, 79, 1, 1, 'pc' )
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (3, 104, 1, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (4, 6, 1, 2, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (5, 105, 1, 3, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (6, 2, 2, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (7, 15, 2, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (8, 104, 2, 150, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (9, 105, 2, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (10, 59, 3, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (11, 107, 3, 70, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (12, 109, 4, 300, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (13, 105, 4, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (14, 114, 4, 25, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (15, 108, 4, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (16, 111, 4, 75, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (17, 29, 4, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (18, 112, 4, 40, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (19, 113, 4, 75, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (20, 110, 5, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (21, 23, 5, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (22, 113, 5, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (23, 42, 5, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (24, 105, 5, 20, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (25, 106, 5, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (26, 21, 5, 30, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (27, 115, 5, 100, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (28, 116, 5, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (29, 117, 5, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (30, 118, 5, 3, 'pc')


SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] OFF