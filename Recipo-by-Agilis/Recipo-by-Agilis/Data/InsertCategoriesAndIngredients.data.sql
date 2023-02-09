SET IDENTITY_INSERT [dbo].[Category] ON 
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (1,N'Vegetables', N'https://images.unsplash.com/photo-1627888086271-6c8546b2977c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1319&q=80',N'Legume' )
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (2,N'Meats', N'https://images.unsplash.com/photo-1611038333075-2efd28705f42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1249&q=80', N'Carne')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (3,N'Dairy', N'https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80', N'Branzeturi')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (4,N'Condiments', N'https://images.unsplash.com/photo-1472476443507-c7a5948772fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', N'Condimente')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (5,N'Herbs & Spices', N'https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', N'Ierburi aromatice')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (6,N'Grains', N'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80', N'Grane')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (7,N'Fish & Seafood', N'https://images.unsplash.com/photo-1499125562588-29fb8a56b5d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80', N'Peste si Fructe de mare')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (8,N'Fruit', N'https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', N'Fructe')
INSERT INTO [dbo].[Category] ([Id],[Name], [ImageLink], [Translate]) VALUES (9,N'Other', N'https://images.unsplash.com/photo-1593759608363-fde2fa65f5d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1118&q=80', N'Altele')

SET IDENTITY_INSERT [dbo].[Category] OFF 

SET IDENTITY_INSERT [dbo].[Ingredients] ON 
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (1,N'Tomato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Rosii')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (2,N'Potato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Cartofi')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (3,N'Milk', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Lapte')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (4,N'Cottage Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza de vaci')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (5,N'Cheddar Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Cheddar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (6,N'Egg', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Oua')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (7,N'Curd Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza cas')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (8,N'Cas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Cas')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (9,N'Farmer Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza de tara')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (10,N'Chhena', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Chhena')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (11,N'Fromage Blanc', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza alba')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (12,N'Queso Fresco', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza proaspata')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (13,N'Paneer Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza Paneer')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (14,N'Ricotta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Ricotta')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (15,N'Mozzarella', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Mozzarella')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (16,N'Halloumi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Halloumi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (17,N'Brie', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Brie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (18,N'Emmental', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Emmental')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (19,N'Gouda', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Gouda')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (20,N'Edam', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Edam')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (21,N'Parmesan', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Parmesan')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (22,N'Beef Steak', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Friptura de vita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (23,N'Minced Beef Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Carne tocata de vita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (24,N'Minced Pork Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Carne tocata de porc')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (25,N'Chicken Breast', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Piept de pui')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (26,N'Chicken Wing', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Aripioare de pui')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (27,N'Pork Meat', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Porc')


INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (28,N'Carrot', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Morcovi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (29,N'Mushroom', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ciuperci')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (30,N'Salad', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Salata verde')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (31,N'Cabbage', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Varza')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (32,N'Cucumber', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Castraveti')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (33,N'Corn', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Porumb')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (34,N'Aioli', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Alioli')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (35,N'Ketchup', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Ketchup')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (36,N'Mayo', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Maioneza')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (37,N'Mustard', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Mustar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (38,N'Ranch', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Ranch')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (39,N'Wasabi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Wasabi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (40,N'Honey Mustard', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Mustar cu miere')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (41,N'Rosemary', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Rozmarin')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (42,N'Basil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Busuioc')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (43,N'Bay Leaf', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Dafin')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (44,N'Celery Seeds', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Seminte de telina')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (45,N'Chives', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Chives')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (46,N'Cilantro', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Coriandru')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (47,N'Oregano', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Oregano')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (48,N'Parsley', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Patrunjel')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (49,N'Sourdough Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Paine cu maia')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (50,N'Baguette', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Bagheta')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (51,N'Brioche', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Briosa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (52,N'Focaccia', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Focaccia')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (53,N'Ciabatta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Ciabatta')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (54,N'Rye Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Paine de secara')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (55,N'Multigrain Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Paine multicereale')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (56,N'Tortillia', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Tortilla')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (57,N'Pita', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Pita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (58,N'Whole Grain Bread', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Paine integrala')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (59,N'Salmon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Somon')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (60,N'Trout', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Pastrav')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (61,N'Tuna', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Ton')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (62,N'Sardines', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Sardine')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (63,N'Sword Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Peste Spada')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (64,N'Cod Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Cod')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (65,N'Butter Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Peste unt')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (66,N'Dorada', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Dorada')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (67,N'Makarel', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Macrou')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (68,N'Calamari', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Calmar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (69,N'Octopus', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Caracatita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (70,N'Shrimp', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Creveti')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (71,N'Mussels', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Midii')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (72,N'Oysters', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Stridii')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (73,N'Lobster', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Homar')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (74,N'Lamb', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Miel')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (75,N'Duck', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Rata')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (76,N'Rabbit', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Iepure')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (77,N'Peas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Mazare')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (78,N'Green beans', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Fasole verde')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (79,N'Onion', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ceapa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (80,N'Garlic', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Usturoi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (81,N'Zuccinni', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Dovlecei')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (82,N'Radish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ridichii')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (83,N'Beetroot', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Sfecla rosie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (84,N'Bell Pepper', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ardei gras')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (85,N'Cauliflower', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Conopida')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (86,N'Eggplant', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Vinete')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (87,N'Strawberry', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Capsuni')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (88,N'Blueberry', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Afine')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (89,N'Blackberry', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Mure')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (90,N'Raspberry', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Zmeura')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (91,N'Gooseberry', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Agrise')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (92,N'Apple', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Mar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (93,N'Pear', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Para')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (94,N'Plum', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Pruna')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (95,N'Apricot', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Caisa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (96,N'Peache', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Piersica')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (97,N'Cherrie', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Cireasa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (98,N'Watermelon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Pepene')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (99,N'Orange', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Portocala')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (100,N'Lemon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Lamaie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (101,N'Kiwi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Kiwi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (102,N'Banana', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Banana')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (103,N'Litchi', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Litchi')

INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (104,N'Sunflower Oil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Ulei de floarea-Soarelui')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (105,N'Salt', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Sare')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (106,N'Black Pepper', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Piper')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (107,N'Soy Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'sos de soya')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (108,N'Water', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Apa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (109,N'Flour', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Faina')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (110,N'Pasta', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Grains'), N'Paste')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (111,N'Salami', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Salami')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (112,N'Olives', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Masline')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (113,N'Tomato Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Sos de rosii')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (114,N'Yeast', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Drojdie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (115,N'Bacon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Kaiser')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (116,N'Celery', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Telina')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (117,N'Beef stock', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Supa de vita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (118,N'Bay leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Dafin')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (119,N'Sweet Potato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Cartof dulce')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (120,N'Snake Beans', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Fasole lunga')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (121,N'Cherry Tomato', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Rosii cherry')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (122,N'Turnip', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ridiche neagra')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (123,N'Pumpkin', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Dovleac')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (124,N'Spinach', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Spanac')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (125,N'Mustard Leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Frunze de mustar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (126,N'Lettuce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Salata mai verde')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (127,N'Leeks', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Praz')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (128,N'Yam', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Yam')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (129,N'Jalapeño', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ardei Jalapenos')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (130,N'Horseradish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Hrean')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (131,N'Spring Onion', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ceapa verde')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (132,N'Green Peas', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Mazare verde')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (133,N'Broccoli', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Broccoli')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (134,N'Asparagus', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Sparanghel')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (135,N'Ginger', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ghimbir')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (136,N'Coriander Powder', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Coriandru praf')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (137,N'Sage', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Salvie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (138,N'Mustard Powder', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Praf de mustar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (139,N'Paprika', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Boia')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (140,N'Mint Leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Frunze de menta')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (141,N'Lemongrass', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Lemongrass')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (142,N'Red Chilli', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Ardei iute rosu')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (143,N'Dill', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Marar')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (144,N'Curry Leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Frunze de curry')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (145,N'Coriander Leaves', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Frunze de coriandru')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (146,N'Coriander Seeds', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Seminte de coriandru')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (147,N'Cinnamon', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Scortisoara')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (148,N'Cayenne', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices')., N'Cayenne')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (149,N'Turkey', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Curcan')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (150,N'Partridge', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Potârniche')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (151,N'Mutton Liver', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Ficat de oaie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (152,N'Ham', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Sunca')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (153,N'Chicken Stock', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Supa de pui')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (154,N'Chicken Liver', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Ficat de pui')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (155,N'Lamb Chops', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Cotlete de berbecut')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (156,N'Quail', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Prepelita')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (157,N'Mutton', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Oaie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (158,N'Crab', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Crab')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (159,N'Shellfish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Moluste')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (160,N'Prawns', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Creveti')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (161,N'Fish Stock', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Supa de peste')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (162,N'Clams', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Scoici')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (163,N'Cat Fish', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Somn')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (164,N'Mackerel', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Macrou')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (165,N'Anchovies', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fish & Seafood'), N'Ansoa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (166,N'Almond Milk', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Lapte de migdale')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (167,N'Red Wine Vinegar', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Otet din Vin Rosu')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (168,N'Red Wine', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Vin Rosu')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (169,N'Margarine', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Margarina')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (170,N'Soy Milk', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Lapte de soya')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (171,N'White Wine', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Vin Alb')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (172,N'White Pepper', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Piper alb')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (173,N'Rice Vinegar', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Otet de orez')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (174,N'Sea Salt', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Sare de mare')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (175,N'Hoisin Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Sos Hoisin')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (176,N'Chocolate Chips', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Chips de ciocolata')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (177,N'Quinoa', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Quinoa')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (178,N'Baslamic Vinegar', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Otet Balsamic')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (179,N'Coconut Oil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Ulei de cocos')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (180,N'Rice Noodles', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Taitei de orez')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (181,N'Vanilla Essence', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Esenta de vanilie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (182,N'Gelatin', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Gelatina')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (183,N'Cranberry Sauce', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Sos de merisoare')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (184,N'Baking Powder', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Praf de copt')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (185,N'Baking Soda', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Bicarbonat de sodiu')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (186,N'Lime', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Lime')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (187,N'Jamaican Jerk Paste', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Pasta Jamaicana')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (188,N'Honey', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Miere')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (189,N'Red Peppers', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Ardei rosu')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (190,N'Red Cabbage', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Varza rosie')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (191,N'Mango', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Fruit'), N'Mango')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (192,N'Green Olives', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Masline verzi')
INSERT INTO [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) VALUES (193,N'Garlic Clove', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Catel de usturoi')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (194,N'Butter', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Unt')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (195,N'Olive Oil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Ulei de masline')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (196,N'Feta Cheese', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Dairy'), N'Branza feta')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (197,N'Dijon Mustard', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Condiments'), N'Mustar de Dijon')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (198,N'Baby Pak Choy', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Vegetables'), N'Pak Choy mic')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (199,N'Sirloin Steak', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Meats'), N'Muschi vita')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (200,N'Brown Rice Miso', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Orez brun')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (201,N'Black Sesame Seeds', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Seminte se susan negru')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (202,N'Sesame Seeds', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Seminte Susan')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (203,N'Sesame Oil', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Ulei de susan')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (204,N'Buckwheat Noodles', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Taitei de hrisca')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (205,N'Chilli Flakes', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Herbs & Spices'), N'Fulgi de chilli')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (206,N'Hazelnuts', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Alune de padure')
Insert into [dbo].[Ingredients] ([Id],[Name], [CategoryId], [Translate]) Values (207,N'White Wine Vinegar', (select id from [dbo].[Category] where [dbo].[Category].[Name]=N'Other'), N'Otet de vin alb')



SET IDENTITY_INSERT [dbo].[Ingredients] OFF

SET IDENTITY_INSERT [dbo].[Subscription] ON 
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (1,N'Free')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (2,N'Monthly')
INSERT INTO [dbo].[Subscription] ([Id],[Name]) VALUES (3,N'Yearly')

SET IDENTITY_INSERT [dbo].[Subscription] OFF 

SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (1,
'1. Put a large non-stick frying pan on a low heat. Cook the onion slowly in the oil and butter until soft but not brown – this should take about 15 mins. Meanwhile, peel the tomatoes (if using) by scoring the skins with a cross, putting them in a bowl and pouring over just-boiled water. Drain the water after 2-3 mins and the skins will peel away easily. You can then coarsely grate them.
\\2. Add the potatoes to the pan, then cover and cook for a further 15-20 mins, stirring occasionally to make sure they fry evenly. When the potatoes are soft and the onion is shiny, crush 2 garlic cloves and stir in, followed by the beaten eggs.
\\3. Put the lid back on the pan and leave the tortilla to cook gently. After 20 mins, the edges and base should be golden, the top set but the middle still a little wobbly. To turn it over, slide it onto a plate and put another plate on top, turn the whole thing over and slide it back into the pan to finish cooking.
\\4.Once cooked, transfer to a plate and serve the tortilla warm or cold, scattered with the chopped parsley. To accompany the tortilla, take slices of warmed baguette, stab all over with a fork and rub with the remaining garlic, pile on the grated tomatoes and season with sea salt and a drizzle of olive oil.',
0, N'Spanish Tortilla', N'https://images.unsplash.com/photo-1639669794539-952631b44515?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1221&q=80', N'
1.Pune o tigaie mare antiaderenta la foc mic. Gătiți ceapa încet în ulei și unt până când se înmoaie, dar nu se rumenește - ar trebui să dureze aproximativ 15 minute. Între timp, curățați roșiile de coajă (dacă le folosiți) încorporând coaja cu o cruce, punându-le într-un castron și turnând peste apă abia fiartă. Scurgeți apa după 2-3 minute și pielea se va desprinde ușor. Apoi le puteți rade grosier.
\\2. Adăugați cartofii în tigaie, apoi acoperiți și gătiți încă 15-20 de minute, amestecând din când în când pentru a vă asigura că se prăjesc uniform. Când cartofii sunt moi și ceapa strălucitoare, zdrobiți 2 căței de usturoi și amestecați, urmați de ouăle bătute.
\\3. Puneți capacul înapoi pe tigaie și lăsați tortilla să se gătească ușor. După 20 de minute, marginile și baza ar trebui să fie aurii, partea superioară așezată, dar mijlocul încă puțin clătinat. Pentru a-l răsturna, glisați-l pe o farfurie și puneți o altă farfurie deasupra, întoarceți totul și glisați-l înapoi în tigaie pentru a termina de gătit.
\\4.Odată gătită, se transferă pe un platou și se servește tortilla caldă sau rece, presărată cu pătrunjelul tocat. Pentru a însoți tortilla, se ia felii de baghetă încălzită, se înjunghie peste tot cu o furculiță și se freacă cu usturoiul rămas, se pun roșiile rase și se condimentează cu sare de mare și un strop de ulei de măsline.' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (2,
'1. Peel the potatoes and cut into 1cm-thick batons. Put into a bowl of cold water and leave to soak for at least 2 hrs to remove the starch from the potatoes – this will help them crisp while frying.
\\2.Drain the potatoes well and pat dry with kitchen paper. Fill a deep pan no more than a third full with oil and heat to 140C, or until a cube of bread dropped in browns in 60 seconds. Fry the French fries in batches for 6 mins per batch until golden straw-coloured, cooked through and lightly crisp. Drain well on kitchen paper.
\\3.Turn the heat up until the oil reaches 180C, or a cube of bread browns in 30 seconds. Fry the French fries again for 2-3 mins per batch until lightly golden and really crisp. Drain on kitchen paper and immediately season with sea salt.',
0, N'French Fries', N'https://images.unsplash.com/photo-1568226189293-77924f3f10c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80', N'
1. Curatam cartofii si ii taiem in bastoane de 1 cm grosime. Puneți într-un castron cu apă rece și lăsați la macerat timp de cel puțin 2 ore pentru a îndepărta amidonul de pe cartofi - acest lucru îi va ajuta să devină crocante în timp ce se prăjesc.
\\2.Scurgeți bine cartofii și uscați cu hârtie de bucătărie. Umpleți o tigaie adâncă nu mai mult de o treime cu ulei și încălziți-o la 140C sau până când un cub de pâine s-a rumenit în 60 de secunde. Prăjiți cartofii prăjiți în loturi timp de 6 minute per lot până devin aurii de culoare pai, gătiți și ușor crocanți. Scurgeți bine pe hârtie de bucătărie.
\\3.Măriți căldura până când uleiul ajunge la 180C, sau un cub de pâine se rumenește în 30 de secunde. Prăjiți din nou cartofii prăjiți timp de 2-3 minute per lot până când devin ușor aurii și foarte crocanți. Scurgeți pe hârtie de bucătărie și asezonați imediat cu sare de mare.
' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (3,'
1. Clean the skin and the bones if any.
\\2. Dry the salmon with a kitchen paper towel.
\\3. Cut the salmon into slices 0.5 cm thick.
\\4. Enjoy with some soya sauce',
0, N'Salmon Sashimi' , N'https://images.unsplash.com/photo-1599570340442-844ea773ef96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', N'
1. Curățați pielea și oasele, dacă există.
\\2. Uscați somonul cu un prosop de hârtie de bucătărie.
\\3. Tăiați somonul în felii de 0,5 cm grosime.
\\4. Savurați cu niște sos de soia
')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (4,'
1. Mix together the yeast and sugar with 250ml warm water and leave to sit for 10 mins. Place half the flour in a table-top mixer with a dough hook, pour in the yeast mixture and beat at medium speed for 10 mins (or mix in a bowl, then knead with oiled hands in the bowl for 5-10 mins).
\\2.Leave somewhere warm for 10 more mins, then add the remaining flour and oil. Beat or knead to a dough for a further 5 mins. Put in a well-oiled bowl, cover with a cloth and place somewhere warm to double in size – about 1½ hrs. 
\\3.For the sauce, heat the oil in a pan over a moderate heat. Add the onion and cook for 3 mins, stirring constantly. Add the garlic, 1 tsp sea salt and 1 tsp ground black pepper and cook for 2 mins more. Add the tomatoes and bring to the boil, then reduce the heat and simmer for a good 20 mins, stirring occasionally.
\\4.Once your dough has doubled in size, slap it down on a lightly floured surface and knead for 4 mins until soft but not too elastic. Divide into 6 pieces, roll into balls and leave to rest for 10 mins. Heat oven to the highest temperature possible (210C fan in the Good Food test kitchen) and place a flat baking sheet in the oven.
\\5. With a well-floured rolling pin, roll out each ball of dough as thinly as possible. Remove the baking sheet from the oven, oil or dust with flour, then carefully transfer the dough base onto it. Spread over some of the tomato sauce, then the cheese, salami, mushrooms and any toppings you desire.',
0, N'Pizza', N'https://images.unsplash.com/photo-1585778718569-2efde6c55c80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80', N'
1. Amestecați drojdia și zahărul cu 250 ml apă caldă și lăsați să stea 10 minute. Puneți jumătate din făină într-un mixer de masă cu un cârlig de aluat, turnați amestecul de drojdie și bateți la viteză medie timp de 10 minute (sau amestecați într-un castron, apoi frământați cu mâinile unse cu ulei în bol timp de 5-10 minute).
\\2.Lăsați undeva cald încă 10 minute, apoi adăugați făina rămasă și uleiul. Bateți sau frământați până la un aluat pentru încă 5 minute. Se pune într-un castron bine uns cu ulei, se acoperă cu o cârpă și se pune undeva cald pentru a-și dubla volumul – aproximativ 1 oră și jumătate.
\\3.Pentru sos, încălziți uleiul într-o tigaie la foc moderat. Adăugați ceapa și gătiți timp de 3 minute, amestecând continuu. Adăugați usturoiul, 1 linguriță de sare de mare și 1 linguriță de piper negru măcinat și gătiți încă 2 minute. Adăugați roșiile și aduceți la fierbere, apoi reduceți focul și fierbeți timp de 20 de minute bune, amestecând din când în când.
\\4.Odată ce aluatul și-a dublat volumul, puneți-l pe o suprafață ușor înfăinată și frământați timp de 4 minute până când se înmoaie, dar nu prea elastic. Împărțiți în 6 bucăți, rulați în bile și lăsați să se odihnească timp de 10 minute. Încălzește cuptorul la cea mai ridicată temperatură posibilă (ventilator de 210 C în bucătăria de testare Good Food) și pune o foaie de copt plată în cuptor.
' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (5,'
1. Put a large saucepan on a medium heat and add 1 tbsp olive oil.
\\2. Add 4 finely chopped bacon rashers and fry for 10 mins until golden and crisp.
\\3. Reduce the heat and add the 2 onions, 2 carrots, 2 celery sticks, 2 garlic cloves and the leaves from 2-3 sprigs rosemary, all finely chopped, then fry for 10 mins. Stir the veg often until it softens.
\\4. Increase the heat to medium-high, add 500g beef mince and cook stirring for 3-4 mins until the meat is browned all over.
\\5. Add 2 tins plum tomatoes, the finely chopped leaves from ¾ small pack basil, 1 tsp dried oregano, 2 bay leaves, 2 tbsp tomato purée, 1 beef stock cube, 1 deseeded and finely chopped red chilli (if using), 125ml red wine and 6 halved cherry tomatoes. Stir with a wooden spoon, breaking up the plum tomatoes.
\\ 6. Bring to the boil, reduce to a gentle simmer and cover with a lid. Cook for 1 hr 15 mins stirring occasionally, until you have a rich, thick sauce.
\\7. Add the 75g grated parmesan, check the seasoning and stir.
\\8. When the bolognese is nearly finished, cook 400g spaghetti following the pack instructions.
\\9. Drain the spaghetti and either stir into the bolognese sauce, or serve the sauce on top. Serve with more grated parmesan, the remaining basil leaves and crusty bread, if you like.',
0, N'Bolognese Pasta', N'https://images.unsplash.com/photo-1600803734709-83f30a78e312?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',N'
1. Pune o cratiță mare la foc mediu și adaugă 1 lingură ulei de măsline.
\\2. Adăugați 4 slănină tăiată mărunt și prăjiți timp de 10 minute până devin aurii și crocante.
\\3. Se reduce focul si se adauga cele 2 cepe, 2 morcovi, 2 batoane de telina, 2 catei de usturoi si frunzele din 2-3 crengute de rozmarin, toate tocate marunt, apoi se prajesc 10 min. Amestecați des legumele până se înmoaie.
\\4. Creșteți focul la mediu-mare, adăugați 500 g carne tocată de vită și gătiți amestecând timp de 3-4 minute până când carnea se rumenește peste tot.
\\5. Adăugați 2 cutii de roșii prune, frunzele tăiate mărunt din ¾ pachet mic de busuioc, 1 linguriță de oregano uscat, 2 foi de dafin, 2 linguri de piure de roșii, 1 cub de supă de vită, 1 ardei iute roșu fără semințe și tocat fin (dacă este folosit), 125 ml vin roșu și 6 roșii cherry tăiate în jumătate. Amestecați cu o lingură de lemn, rupând roșiile prune.
\\ 6. Se aduce la fierbere, se reduce la foc mic și se acoperă cu un capac. Gatiti 1 ora si 15 minute amestecand din cand in cand, pana obtineti un sos bogat si gros.
\\7. Adăugați 75 g parmezan ras, verificați condimentele și amestecați.
\\8. Când bolognese este aproape gata, gătiți 400 g spaghete urmând instrucțiunile de pe ambalaj.
\\9. Scurgeți spaghetele și fie amestecați în sosul bolognese, fie serviți sosul deasupra. Serviți cu mai mult parmezan ras, frunzele de busuioc rămase și pâine, dacă doriți.
' )
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (6,'
1. Heat the grill to medium-high. Mix the jerk paste and 1 tbsp honey together in a bowl. Place the salmon fillets on a foil-lined baking tray and brush all over with the sauce. Cook on the top shelf for 8-10 mins or until just cooked through (move the tray down a shelf if the salmon starts getting too caramelised).
\\2. Meanwhile, put the remaining honey, lime juice and some seasoning in a large bowl and mix together. Add the red cabbage, mango, pepper, spring onions and coriander, and toss through the dressing. Serve the salmon on a pile of the slaw.',
1,N'Sticky jerk salmon with mango slaw',N'https://cloudinary-cdn.whisk.com/image/upload/v1663509124/v3/user-recipes/b2ec7a7d5f8ea027ffdc0459d686fef7.jpg', N'
1. Încălzește grătarul la medie-mare. Amestecați pasta de jerk și 1 lingură de miere într-un castron. Asezati fileurile de somon pe o tava tapetata cu folie si ungeti peste tot cu sos. Gătiți pe raftul de sus timp de 8-10 minute sau până când este fiert (mutați tava pe un raft dacă somonul începe să se caramelizeze prea mult).
\\2. Între timp, puneți mierea rămasă, sucul de lămâie și niște condimente într-un castron mare și amestecați. Adăugați varza roșie, mango, ardeiul, ceapa primăvară și coriandru și aruncați prin dressing. Serviți somonul pe o grămadă de salata.
')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (7,'
1. Cook the quinoa following the pack instructions, then rinse in cold water and drain thoroughly.
\\2. Meanwhile, mix the butter, chilli and garlic into a paste. Toss the chicken fillets in 2 tsp of the olive oil with some seasoning. Lay in a hot griddle pan and cook for 3-4 mins each side or until cooked through. Transfer to a plate, dot with the spicy butter and set aside to melt.
\\3. Next, tip the tomatoes, olives, onion, feta and mint into a bowl. Toss in the cooked quinoa. Stir through the remaining olive oil, lemon juice and zest, and season well. Serve with the chicken fillets on top, drizzled with any buttery chicken juices.',
1,N'Grilled chicken with Quinoa Greek salad',N'https://www.thesouthafrican.com/wp-content/uploads/2021/03/Greek-Style-Grilled-Chicken-and-Quinoa-Salad.jpg', N'
1. Gătiți quinoa urmând instrucțiunile de pe ambalaj, apoi clătiți cu apă rece și scurgeți bine.
\\2. Între timp, amestecați untul, ardeiul iute și usturoiul într-o pastă. Puneți fileurile de pui în 2 linguri de ulei de măsline cu niște condimente. Puneți într-o tigaie fierbinte și gătiți timp de 3-4 minute pe fiecare parte sau până când este fiert. Transferați pe o farfurie, ungeți cu untul picant și lăsați deoparte să se topească.
\\3. Apoi, pune roșiile, măslinele, ceapa, feta și menta într-un castron. Se amestecă quinoa fiartă. Se amestecă uleiul de măsline rămas, sucul și coaja de lămâie și se condimentează bine. Serviți cu fileurile de pui deasupra, stropite cu sosul ramas de la pui.
')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (8,'
1. Turn on the grill and heat 1 tsp of the oil in a small pan. Add the lardons and fry until crisp and golden. Drain on kitchen paper.
\\2. Heat 2 tsp of the oil in a non-stick frying pan. Mix together the eggs, lardons, chives and some ground black pepper. Pour into the frying pan and cook over a low heat until semi-set, then lay the brie on top. Grill until set and golden. Remove from the pan and cut into wedges just before serving.
\\3. Meanwhile, mix the remaining olive oil, vinegar, mustard and seasoning in a bowl. Toss in the cucumber and radishes, and serve alongside the omelette wedges.',
0,N'Bacon & Brie Omelette Wedges with Summer Salad',N'https://www.newideafood.com.au/media/7828/dd47f94a-d7b7-4e67-a0ff-1f3dd68003c6.jpg', N'
1. Porniți grătarul și încălziți 1 linguriță de ulei într-o tigaie mică. Adăugați lardonele și prăjiți până devin crocante și aurii. Scurgeți pe hârtie de bucătărie.
\\2. Încinge 2 linguri de ulei într-o tigaie antiaderentă. Amestecați ouăle, lardonul, arpagicul și niște piper negru măcinat. Se toarnă în tigaie și se gătește la foc mic până se întărește, apoi se așează brie-ul deasupra. Prăjiți până se întărește și devin aurii. Scoateți din tigaie și tăiați în felii chiar înainte de servire.
\\3. Între timp, amestecați uleiul de măsline rămas, oțetul, muștarul și condimentele într-un castron. Adăugați castravetele și ridichile și serviți alături de felii de omletă.
')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (9,'
1. Heat a non-stick griddle or frying pan over a high heat. Season the steaks with salt and rub with a little oil, then griddle on each side for 2-3 mins. Set aside, covered in baking parchment, to rest
\\2. Meanwhile, cook the noodles following pack instructions, then leave to rest in a bowl filled with cold water.
\\3. Heat the sesame oil in a wok over a medium heat. Add the ginger, garlic and chilli and cook for 1 min, then add the spring onions and pak choi, and stir-fry until they begin to wilt. Add the honey, vinegar and miso, then toss in the noodles and sesame seeds. Divide between four bowls. Slice the steak and place on top of the noodles, sprinkling over extra sesame seeds, if you like',
1,N'Sesame steak & buckwheat noodle bowls',N'https://img.taste.com.au/JhSGMPUH/taste/2016/11/beef-soba-noodle-bowl-105326-1.jpeg', N'
1. Încingeți o tigaie antiaderență sau o tigaie la foc mare. Se condimentează fripturile cu sare și se freacă cu puțin ulei, apoi se fierb pe fiecare parte timp de 2-3 minute. Dați deoparte, acoperiți cu pergament, să se odihnească
\\2. Între timp, gătiți tăițeii urmând instrucțiunile de pe pachet, apoi lăsați să se odihnească într-un castron umplut cu apă rece.
\\3. Încinge uleiul de susan într-un wok la foc mediu. Adăugați ghimbirul, usturoiul și ardeiul iute și gătiți timp de 1 minut, apoi adăugați ceapa primăvară și pak choi și prăjiți până când încep să se ofilească. Adăugați mierea, oțetul și miso, apoi adăugați tăițeii și semințele de susan. Împărțiți între patru boluri. Tăiați friptura și puneți-o deasupra tăițeilor, presărând peste semințe de susan în plus, dacă doriți
')
INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink], [Translate]) VALUES (10,'
1. Drain the peppers and tip them into a food processor with the toasted hazelnuts, garlic, olive oil, chilli flakes, vinegar and a good pinch of salt. Blitz to a smooth paste. Add the parmesan and parsley, then blitz again. Check the seasoning.
\\2. Cook the pasta following pack instructions. Drain and reserve a cup of the cooking water. Toss the pesto with the pasta and a splash of cooking water to loosen. Serve in bowls with extra parmesan grated over.',
1,N'Red pepper & hazelnut pesto pasta',N'https://images.immediate.co.uk/production/volatile/sites/30/2021/11/2021-11-08_GFO-1121-App-RedPepperHazelnutPestoPasta_0038-96d9cb1.jpg?resize=960,872', N'
1. Scurgeți ardeii și puneți-i într-un robot de bucătărie cu alunele prăjite, usturoiul, uleiul de măsline, fulgii de ardei iute, oțetul și un praf bun de sare. Amplasați până la o pastă netedă. Adăugați parmezanul și pătrunjelul, apoi amestecați din nou. Verificați condimentele.
\\2. Gătiți pastele urmând instrucțiunile de pe pachet. Scurgeți și rezervați o cană de apă de gătit. Se amestecă pesto cu pastele și un strop de apă de gătit pentru a se slăbi. Serviți în boluri cu extra parmezan ras.
')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (11,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (12,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (13,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (14,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (15,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (16,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (17,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (18,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (19,'',0,N'',N'')
--INSERT INTO Recipes([Id],[Steps], [IsPremium], [Name], [ImageLink]) VALUES (20,'',0,N'',N'')


SET IDENTITY_INSERT [dbo].[Recipes] OFF 


SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] ON 
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (1, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Potato'), 1, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (2, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Onion'), 1, 1, 'pc' )
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (3, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Sunflower Oil'), 1, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (4, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Egg'), 1, 2, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (5, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salt'), 1, 3, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (6, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Potato'), 2, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (7, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Mozzarella'), 2, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (8, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Sunflower Oil'), 2, 150, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (9, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salt'), 2, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (10, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salmon'), 3, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (11, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Soy Sauce'), 3, 70, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (12, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Flour'), 4, 300, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (13, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salt'), 4, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (14, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Yeast'), 4, 25, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (15, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Water'), 4, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (16, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salami'), 4, 75, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (17, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Mushroom'), 4, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (18, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Olives'), 4, 40, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (19, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Tomato Sauce'), 4, 75, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (20, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Pasta'), 5, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (21, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Minced Beef Meat'), 5, 150, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (22, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Tomato Sauce'), 5, 100, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (23, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Basil'), 5, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (24, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salt'), 5, 20, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (25, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Black Pepper'), 5, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (26, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Parmesan'), 5, 30, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (27, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Bacon'), 5, 100, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (28, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Celery'), 5, 50, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (29, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Beef Stock'), 5, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (30, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Bay Leaves'), 5, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (31, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Jamaican Jerk Paste'), 6, 30, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (32, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Honey'), 6, 30, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (33, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Salmon'), 6, 4, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (34, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Lime'), 6, 2, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (35, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Red Cabbage'), 6, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (36, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Mango'), 6, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (37, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Red Peppers'), 6, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (38, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Spring Onion'), 6, 6, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (39, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Coriander Leaves'), 6, 2, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (40, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Quinoa'), 7, 225, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (41, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Butter'), 7, 25, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (42, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Red Chilli'), 7, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (43, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Garlic Clove'), 7, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (44, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Chicken Breast'), 7, 400, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (45, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Olive Oil'), 7, 22, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (46, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Tomato'), 7, 300, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (47, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Olives'), 7, 30, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (48, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Onion'), 7, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (49, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Feta Cheese'), 7, 100, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (50, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Mint Leaves'), 7, 3, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (51, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Lemon'), 7, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (52, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Olive Oil'), 8, 30, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (53, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Bacon'), 8, 200, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (54, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Egg'), 8, 6, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (55, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Chives'), 8, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (56, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Brie'), 8, 100, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (57, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Red Wine Vinegar'), 8, 5, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (58, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Dijon Mustard'), 8, 5, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (59, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Cucumber'), 8, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (60, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Radish'), 8, 200, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (61, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Sirloin Steak'), 9, 2, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (62, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Sunflower Oil'), 9, 50, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (63, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Buckwheat Noodles'), 9, 300, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (64, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Sesame Oil'), 9, 14, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (65, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Ginger'), 9, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (66, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Garlic Clove'), 9, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (67, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Chilli Flakes'), 9, 5, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (68, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Spring Onion'), 9, 4, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (69, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Baby Pak Choi'), 9, 4, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (70, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Honey'), 9, 10, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (71, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Rice Vinegar'), 9, 10, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (72, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Brown Rice Miso'), 9, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (73, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Black Sesame Seeds'), 9, 10, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (74, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Red Peppers'), 10, 250, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (75, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Hazelnuts'), 10, 60, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (76, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Garlic Clove'), 10, 1, 'pc')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (77, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Olive Oil'), 10, 50, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (78, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Chilli Flakes'), 10, 3, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (79, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'White Wine Vinegar'), 10, 3, 'ml')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (80, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Parmesan'), 10, 30, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (81, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Parsley'), 10, 6, 'g')
INSERT INTO IngredientsInRecipes([Id], [IngredientId], [RecipeId], [Quantity], [QuantityType]) VALUES (82, (select id from [dbo].[Ingredients] where [dbo].[Ingredients].[Name]=N'Pasta'), 10, 400, 'g')

SET IDENTITY_INSERT [dbo].[IngredientsInRecipes] OFF