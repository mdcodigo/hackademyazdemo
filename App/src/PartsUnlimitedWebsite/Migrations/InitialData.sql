/*
This script was created by Visual Studio on 11/10/2019 at 18:44.
Run this script on (localdb)\MSSQLLocalDB.PartsUnlimitedWebsiteBlank (SOUTHAMERICA\maduva) to make it the same as (localdb)\MSSQLLocalDB.PartsUnlimitedWebsite (SOUTHAMERICA\maduva).
This script performs its actions in the following order:
1. Disable foreign-key constraints.
2. Perform DELETE commands. 
3. Perform UPDATE commands.
4. Perform INSERT commands.
5. Re-enable foreign-key constraints.
Please back up your target database before running this script.
*/
/*Pointer used for text / image updates. This might not be needed, but is declared here just in case*/
DECLARE @pv binary(16)
BEGIN TRANSACTION
ALTER TABLE [dbo].[CartItems] DROP CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId]
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId]
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId]
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
ALTER TABLE [dbo].[Rainchecks] DROP CONSTRAINT [FK_dbo.Rainchecks_dbo.Stores_StoreId]
ALTER TABLE [dbo].[Rainchecks] DROP CONSTRAINT [FK_dbo.Rainchecks_dbo.Products_ProductId]
SET IDENTITY_INSERT [dbo].[Stores] ON
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (1, N'Store1')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (2, N'Store2')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (3, N'Store3')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (4, N'Store4')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (5, N'Store5')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (6, N'Store6')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (7, N'Store7')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (8, N'Store8')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (9, N'Store9')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (10, N'Store10')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (11, N'Store11')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (12, N'Store12')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (13, N'Store13')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (14, N'Store14')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (15, N'Store15')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (16, N'Store16')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (17, N'Store17')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (18, N'Store18')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (19, N'Store19')
INSERT INTO [dbo].[Stores] ([StoreId], [Name]) VALUES (20, N'Store20')
SET IDENTITY_INSERT [dbo].[Stores] OFF
SET IDENTITY_INSERT [dbo].[Rainchecks] ON
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (1, N'John Smith1923929452', 18, 3, 33.94, 1)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (2, N'John Smith1735149371', 12, 5, 31.26, 1)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (3, N'John Smith2034237595', 14, 5, 68.92, 2)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (4, N'John Smith160023322', 3, 1, 77.92, 2)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (5, N'John Smith1168413542', 12, 2, 21.41, 2)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (6, N'John Smith609547231', 17, 4, 75.25, 2)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (7, N'John Smith1987910979', 5, 5, 21.34, 3)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (8, N'John Smith1434513699', 16, 6, 55.06, 3)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (9, N'John Smith1108733577', 4, 5, 78.89, 4)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (10, N'John Smith683584065', 16, 7, 43.86, 4)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (11, N'John Smith597682527', 7, 8, 19.38, 4)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (12, N'John Smith139144628', 3, 5, 74.91, 5)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (13, N'John Smith1975753867', 1, 4, 93.54, 5)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (14, N'John Smith1021589995', 8, 3, 45.56, 5)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (15, N'John Smith956817177', 11, 6, 13.45, 6)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (16, N'John Smith1251940683', 3, 1, 86.94, 7)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (17, N'John Smith1390228452', 17, 7, 1.97, 8)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (18, N'John Smith1206155420', 8, 3, 39.89, 9)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (19, N'John Smith1280463357', 3, 2, 85.35, 9)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (20, N'John Smith1160703904', 18, 5, 60.35, 10)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (21, N'John Smith1558123818', 4, 6, 8.15, 11)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (22, N'John Smith2021145104', 12, 1, 69.07, 11)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (23, N'John Smith1545382100', 4, 4, 61.51, 11)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (24, N'John Smith1855079360', 18, 9, 80.51, 12)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (25, N'John Smith27667678', 17, 9, 24.15, 13)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (26, N'John Smith499784169', 8, 6, 7.57, 13)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (27, N'John Smith780788206', 8, 2, 86.96, 14)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (28, N'John Smith1271152617', 7, 4, 76.92, 14)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (29, N'John Smith1578304330', 14, 4, 64.17, 14)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (30, N'John Smith748137689', 2, 6, 63.78, 15)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (31, N'John Smith981461372', 4, 6, 18.64, 16)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (32, N'John Smith1189047758', 1, 8, 29.79, 16)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (33, N'John Smith1485935190', 16, 7, 45.04, 16)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (34, N'John Smith864669318', 11, 3, 43.33, 17)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (35, N'John Smith1291782048', 10, 3, 12.06, 17)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (36, N'John Smith1733162298', 5, 8, 78.01, 17)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (37, N'John Smith837323578', 1, 4, 70.77, 17)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (38, N'John Smith590189227', 15, 8, 55.28, 18)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (39, N'John Smith792567871', 14, 9, 99.79, 18)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (40, N'John Smith279208804', 1, 4, 21.01, 18)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (41, N'John Smith104511004', 1, 8, 85.55, 18)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (42, N'John Smith141234231', 14, 2, 97.28, 19)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (43, N'John Smith1112085928', 6, 8, 42.37, 19)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (44, N'John Smith1594972865', 12, 2, 12.78, 19)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (45, N'John Smith1890942189', 5, 6, 32.86, 20)
INSERT INTO [dbo].[Rainchecks] ([RaincheckId], [Name], [ProductId], [Count], [SalePrice], [StoreId]) VALUES (46, N'John Smith263404988', 13, 8, 48.06, 20)
SET IDENTITY_INSERT [dbo].[Rainchecks] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([CategoryId], [Name], [Description], [ImageUrl]) VALUES (1, N'Brakes', N'Brakes description', N'product_brakes_disc.jpg')
INSERT INTO [dbo].[Categories] ([CategoryId], [Name], [Description], [ImageUrl]) VALUES (2, N'Lighting', N'Lighting description', N'product_lighting_headlight.jpg')
INSERT INTO [dbo].[Categories] ([CategoryId], [Name], [Description], [ImageUrl]) VALUES (3, N'Wheels & Tires', N'Wheels & Tires description', N'product_wheel_rim.jpg')
INSERT INTO [dbo].[Categories] ([CategoryId], [Name], [Description], [ImageUrl]) VALUES (4, N'Batteries', N'Batteries description', N'product_batteries_basic-battery.jpg')
INSERT INTO [dbo].[Categories] ([CategoryId], [Name], [Description], [ImageUrl]) VALUES (5, N'Oil', N'Oil description', N'product_oil_premium-oil.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (1, N'LIG-0001', 2, 1, N'Halogen Headlights (2 Pack)', 38.99, 38.99, N'product_lighting_headlight.jpg', N'Our Halogen Headlights are made to fit majority of vehicles with our  universal fitting mold. Product requires some assembly and includes light bulbs.', '20190903 10:56:15.473', N'{ "Light Source" : "Halogen", "Assembly Required": "Yes", "Color" : "Clear", "Interior" : "Chrome", "Beam": "low and high", "Wiring harness included" : "Yes", "Bulbs Included" : "No",  "Includes Parking Signal" : "Yes"}', 10, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (2, N'LIG-0002', 2, 2, N'Bugeye Headlights (2 Pack)', 48.99, 48.99, N'product_lighting_bugeye-headlight.jpg', N'Our Bugeye Headlights use Halogen light bulbs are made to fit into a standard Bugeye slot. Product requires some assembly and includes light bulbs.', '20190903 10:56:15.473', N'{ "Light Source" : "Halogen", "Assembly Required": "Yes", "Color" : "Clear", "Interior" : "Chrome", "Beam": "low and high", "Wiring harness included" : "No", "Bulbs Included" : "Yes",  "Includes Parking Signal" : "Yes"}', 7, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (3, N'LIG-0003', 2, 3, N'Turn Signal Light Bulb', 6.49, 6.49, N'product_lighting_lightbulb.jpg', N' Clear bulb that with a universal fitting for all headlights/taillights.  Simple Installation, low wattage and a clear light for optimal visibility and efficiency.', '20190903 10:56:15.473', N'{ "Color" : "Clear", "Fit" : "Universal", "Wattage" : "30 Watts", "Includes Socket" : "Yes"}', 18, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (4, N'WHE-0001', 3, 4, N'Matte Finish Rim', 75.99, 75.99, N'product_wheel_rim.jpg', N'A Parts Unlimited favorite, the Matte Finish Rim is affordable low profile style. Fits all low profile tires.', '20190903 10:56:15.473', N'{ "Material" : "Aluminum alloy",  "Design" : "Spoke", "Spokes" : "9",  "Number of Lugs" : "4", "Wheel Diameter" : "17 in.", "Color" : "Black", "Finish" : "Matte" } ', 4, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (5, N'WHE-0002', 3, 5, N'Blue Performance Alloy Rim', 88.99, 88.99, N'product_wheel_rim-blue.jpg', N'Stand out from the crowd with a set of aftermarket blue rims to make you vehicle turn heads and at a price that will do the same.', '20190903 10:56:15.473', N'{ "Material" : "Aluminum alloy",  "Design" : "Spoke", "Spokes" : "5",  "Number of Lugs" : "4", "Wheel Diameter" : "18 in.", "Color" : "Blue", "Finish" : "Glossy" } ', 8, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (6, N'WHE-0003', 3, 6, N'High Performance Rim', 99.99, 99.49, N'product_wheel_rim-red.jpg', N'Light Weight Rims with a twin cross spoke design for stability and reliable performance.', '20190903 10:56:15.473', N'{ "Material" : "Aluminum alloy",  "Design" : "Spoke", "Spokes" : "12",  "Number of Lugs" : "5", "Wheel Diameter" : "18 in.", "Color" : "Red", "Finish" : "Matte" } ', 3, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (7, N'WHE-0004', 3, 7, N'Wheel Tire Combo', 72.49, 72.49, N'product_wheel_tyre-wheel-combo.jpg', N'For the endurance driver, take advantage of our best wearing tire yet. Composite rubber and a heavy duty steel rim.', '20190903 10:56:15.473', N'{ "Material" : "Steel",  "Design" : "Spoke", "Spokes" : "8",  "Number of Lugs" : "4", "Wheel Diameter" : "19 in.", "Color" : "Gray", "Finish" : "Standard", "Pre-Assembled" : "Yes" } ', 0, 4)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (8, N'WHE-0005', 3, 8, N'Chrome Rim Tire Combo', 129.99, 129.99, N'product_wheel_tyre-rim-chrome-combo.jpg', N'Save time and money with our ever popular wheel and tire combo. Pre-assembled and ready to go.', '20190903 10:56:15.473', N'{ "Material" : "Aluminum alloy",  "Design" : "Spoke", "Spokes" : "10",  "Number of Lugs" : "5", "Wheel Diameter" : "17 in.", "Color" : "Silver", "Finish" : "Chrome", "Pre-Assembled" : "Yes" } ', 1, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (9, N'WHE-0006', 3, 9, N'Wheel Tire Combo (4 Pack)', 219.99, 219.99, N'product_wheel_tyre-wheel-combo-pack.jpg', N'Having trouble in the wet? Then try our special patent tire on a heavy duty steel rim. These wheels perform excellent in all conditions but were designed specifically for wet weather.', '20190903 10:56:15.473', N'{ "Material" : "Steel",  "Design" : "Spoke", "Spokes" : "8",  "Number of Lugs" : "5", "Wheel Diameter" : "19 in.", "Color" : "Gray", "Finish" : "Standard", "Pre-Assembled" : "Yes" } ', 3, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (10, N'BRA-0001', 1, 10, N'Disk and Pad Combo', 25.99, 25.99, N'product_brakes_disk-pad-combo.jpg', N'Our brake disks and pads perform the best together. Better stopping distances without locking up, reduced rust and dusk.', '20190903 10:56:15.473', N'{ "Disk Design" : "Cross Drill Slotted", " Pad Material" : "Ceramic", "Construction" : "Vented Rotor", "Diameter" : "10.3 in.", "Finish" : "Silver Zinc Plated", "Hat Finish" : "Silver Zinc Plated", "Material" : "Cast Iron" }', 0, 6)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (11, N'BRA-0002', 1, 11, N'Brake Rotor', 18.99, 18.99, N'product_brakes_disc.jpg', N'Our Brake Rotor Performs well in wet conditions with a smooth responsive feel. Machined to a high tolerance to ensure all of our Brake Rotors are safe and reliable.', '20190903 10:56:15.473', N'{ "Disk Design" : "Cross Drill Slotted",  "Construction" : "Vented Rotor", "Diameter" : "10.3 in.", "Finish" : "Silver Zinc Plated", "Hat Finish" : "Black E-coating",  "Material" : "Cast Iron" }', 4, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (12, N'BRA-0003', 1, 12, N'Brake Disk and Calipers', 43.99, 43.99, N'product_brakes_disc-calipers-red.jpg', N'Upgrading your brakes can increase stopping power, reduce dust and noise. Our Disk Calipers exceed factory specification for the best performance.', '20190903 10:56:15.473', N'{"Disk Design" : "Cross Drill Slotted", " Pad Material" : "Carbon Ceramic",  "Construction" : "Vented Rotor", "Diameter" : "11.3 in.", "Bolt Pattern": "6 x 5.31 in.", "Finish" : "Silver Zinc Plated",  "Material" : "Carbon Alloy", "Includes Brake Pads" : "Yes" }', 2, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (13, N'BAT-0001', 4, 13, N'12-Volt Calcium Battery', 129.99, 129.99, N'product_batteries_basic-battery.jpg', N'Calcium is the most common battery type. It is durable and has a long shelf and service life. They also provide high cold cranking amps.', '20190903 10:56:15.473', N'{ "Type": "Calcium", "Volts" : "12", "Weight" : "22.9 lbs", "Size" :  "7.7x5x8.6", "Cold Cranking Amps" : "510" }', 9, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (14, N'BAT-0002', 4, 14, N'Spiral Coil Battery', 154.99, 154.99, N'product_batteries_premium-battery.jpg', N'Spiral Coil batteries are the preferred option for high performance Vehicles where extra toque is need for starting. They are more resistant to heat and higher charge rates than conventional batteries.', '20190903 10:56:15.473', N'{ "Type": "Spiral Coil", "Volts" : "12", "Weight" : "20.3 lbs", "Size" :  "7.4x5.1x8.5", "Cold Cranking Amps" : "460" }', 3, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (15, N'BAT-0003', 4, 15, N'Jumper Leads', 16.99, 16.99, N'product_batteries_jumper-leads.jpg', N'Battery Jumper Leads have a built in surge protector and a includes a plastic carry case to keep them safe from corrosion.', '20190903 10:56:15.473', N'{ "length" : "6ft.", "Connection Type" : "Alligator Clips", "Fit" : "Universal", "Max Amp''s" : "750" }', 6, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (16, N'OIL-0001', 5, 16, N'Filter Set', 28.99, 28.99, N'product_oil_filters.jpg', N'Ensure that your vehicle''s engine has a longer life with our new filter set. Trapping more dirt to ensure old freely circulates through your engine.', '20190903 10:56:15.473', N'{ "Filter Type" : "Canister and Cartridge", "Thread Size" : "0.75-16 in.", "Anti-Drainback Valve" : "Yes"}', 3, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (17, N'OIL-0002', 5, 17, N'Oil and Filter Combo', 34.49, 34.49, N'product_oil_oil-filter-combo.jpg', N'This Oil and Oil Filter combo is suitable for all types of passenger and light commercial vehicles. Providing affordable performance through excellent lubrication and breakdown resistance.', '20190903 10:56:15.473', N'{ "Filter Type" : "Canister", "Thread Size" : "0.75-16 in.", "Anti-Drainback Valve" : "Yes", "Size" : "1.1 gal.", "Synthetic" : "No" }', 5, 0)
INSERT INTO [dbo].[Products] ([ProductId], [SkuNumber], [CategoryId], [RecommendationId], [Title], [Price], [SalePrice], [ProductArtUrl], [Description], [Created], [ProductDetails], [Inventory], [LeadTime]) VALUES (18, N'OIL-0003', 5, 18, N'Synthetic Engine Oil', 36.49, 36.49, N'product_oil_premium-oil.jpg', N'This Oil is designed to reduce sludge deposits and metal friction throughout your cars engine. Provides performance no matter the condition or temperature.', '20190903 10:56:15.473', N'{ "Size" :  "1.1 Gal." , "Synthetic " : "Yes"}', 11, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'02f2feae-6012-47c8-be4b-3b04682b6dc2', NULL, N'Administrator@test.com', 0, N'AFg0+LrPMrc85pceoo4+GOxUhE+g4hDbv9f9wBd7lYqbGNtu7iiuBqNnQUD6NQavsw==', N'b1e7718d-777a-452e-918e-875080a96896', NULL, 0, 0, NULL, 1, 0, N'Administrator@test.com')
INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2d1598c2-e284-4edf-9e5c-52d638b5186f', NULL, N'maduva@microsoft.com', 0, N'AO0SbGaBXrGt2djIgs8j4ZXvM6cwtgEUjE/t+TlPyxThQ5hl7zyhx7fYGsvAyLHwJg==', N'5f6f2a8d-3b1c-460f-8c81-36a2bb5e8f05', NULL, 0, 0, NULL, 1, 0, N'maduva@microsoft.com')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
INSERT INTO [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'02f2feae-6012-47c8-be4b-3b04682b6dc2', N'ManageStore', N'Allowed')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'09675c60-4620-4ea3-a786-f7762ee3e674', N'Administrator')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02f2feae-6012-47c8-be4b-3b04682b6dc2', N'09675c60-4620-4ea3-a786-f7762ee3e674')
ALTER TABLE [dbo].[CartItems]
    ADD CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
ALTER TABLE [dbo].[AspNetUserRoles]
    ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AspNetUserRoles]
    ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AspNetUserClaims]
    ADD CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[AspNetUserLogins]
    ADD CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrderDetails]
    ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE
ALTER TABLE [dbo].[OrderDetails]
    ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
ALTER TABLE [dbo].[Rainchecks]
    ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Stores_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Stores] ([StoreId]) ON DELETE CASCADE
ALTER TABLE [dbo].[Rainchecks]
    ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
COMMIT TRANSACTION
