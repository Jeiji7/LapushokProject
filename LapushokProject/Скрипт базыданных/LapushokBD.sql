USE [Lopushok]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 12.03.2025 0:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountInPackage] [int] NULL,
	[UnitOfMeasurement] [nvarchar](50) NULL,
	[CountInWarehourse] [int] NULL,
	[MinRemainder] [int] NULL,
	[Cost] [int] NULL,
	[ID_type] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.03.2025 0:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Article] [int] NULL,
	[MinCost] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[PeopleCount] [int] NULL,
	[ShopNumber] [int] NULL,
	[ID_type] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 12.03.2025 0:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_prod] [int] NULL,
	[ID_mat] [int] NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMaterial]    Script Date: 12.03.2025 0:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 12.03.2025 0:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (1, N'Спрессованный материал серый 0x2', 5, N' м', 140, 49, 33128, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (2, N'Рулон бумаги зеленый 1x1', 3, N' м', 634, 36, 26841, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (3, N'Спрессованный материал розовый 2x1', 8, N' м', 636, 21, 52606, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (4, N'Гранулы для бумаги розовый 2x2', 10, N' л', 661, 16, 10608, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (5, N'Спрессованный материал белый 1x1', 7, N' кг', 843, 16, 43440, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (6, N'Рулон бумаги белый 1x0', 1, N' м', 501, 49, 15833, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (7, N'Переработка бумаги синий 0x3', 9, N' м', 958, 32, 14180, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (8, N'Рулон бумаги цветной 2x0', 3, N' м', 386, 46, 35544, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (9, N'Рулон бумаги зеленый 2x2', 8, N' кг', 593, 20, 55016, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (10, N'Рулон бумаги белый 3x2', 4, N' кг', 16, 31, 53759, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (11, N'Переработка бумаги серый 3x3', 10, N' м', 89, 20, 49391, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (12, N'Гранулы для бумаги синий 1x2', 6, N' л', 112, 34, 25624, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (13, N'Рулон бумаги серый 3x3', 3, N' м', 596, 8, 50247, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (14, N'Спрессованный материал цветной 1x3', 3, N' м', 772, 40, 51672, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (15, N'Рулон бумаги синий 2x2', 6, N' кг', 363, 47, 38450, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (16, N'Гранулы для бумаги розовый 0x3', 4, N' л', 379, 41, 3868, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (17, N'Переработка бумаги цветной 1x3', 6, N' кг', 32, 34, 37930, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (18, N'Гранулы для бумаги цветной 0x1', 5, N' л', 759, 28, 9216, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (19, N'Рулон бумаги цветной 1x2', 10, N' м', 246, 37, 5016, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (20, N'Переработка бумаги серый 1x2', 8, N' м', 516, 49, 35981, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (21, N'Спрессованный материал синий 0x2', 3, N' кг', 514, 40, 6555, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (22, N'Переработка бумаги синий 1x2', 4, N' м', 81, 32, 47873, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (23, N'Спрессованный материал цветной 1x2', 1, N' м', 429, 47, 15802, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (24, N'Рулон бумаги розовый 2x1', 1, N' м', 349, 9, 36163, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (25, N'Рулон бумаги белый 3x3', 2, N' кг', 201, 46, 51261, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (26, N'Рулон бумаги цветной 2x2', 10, N' кг', 534, 46, 50776, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (27, N'Спрессованный материал розовый 2x3', 3, N' м', 552, 7, 4657, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (28, N'Рулон бумаги розовый 3x2', 9, N' м', 144, 41, 51776, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (29, N'Переработка бумаги синий 0x1', 7, N' м', 97, 30, 47937, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (30, N'Спрессованный материал розовый 1x2', 7, N' м', 509, 26, 10604, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (31, N'Рулон бумаги цветной 1x3', 10, N' кг', 149, 13, 22724, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (32, N'Рулон бумаги синий 3x2', 9, N' м', 508, 16, 25561, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (33, N'Рулон бумаги зеленый 2x3', 2, N' м', 181, 35, 45388, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (34, N'Гранулы для бумаги розовый 0x2', 7, N' кг', 37, 50, 17227, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (35, N'Переработка бумаги цветной 0x0', 9, N' м', 508, 19, 51147, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (36, N'Переработка бумаги серый 0x2', 3, N' м', 167, 17, 10248, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (37, N'Гранулы для бумаги цветной 0x3', 10, N' кг', 962, 33, 35922, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (38, N'Рулон бумаги зеленый 3x3', 3, N' м', 861, 45, 37283, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (39, N'Рулон бумаги белый 0x3', 2, N' м', 933, 50, 7253, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (40, N'Рулон бумаги синий 3x1', 3, N' м', 720, 11, 44675, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (41, N'Спрессованный материал белый 3x3', 8, N' м', 942, 12, 17600, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (42, N'Рулон бумаги белый 1x3', 2, N' кг', 382, 10, 32770, 2, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (43, N'Переработка бумаги белый 3x0', 10, N' м', 247, 11, 39500, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (44, N'Гранулы для бумаги синий 1x3', 10, N' л', 841, 18, 38700, 3, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (45, N'Спрессованный материал синий 3x1', 10, N' м', 270, 50, 38809, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (46, N'Спрессованный материал цветной 0x0', 6, N' м', 754, 24, 4611, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (47, N'Переработка бумаги цветной 0x1', 8, N' м', 833, 34, 53875, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (48, N'Спрессованный материал цветной 1x0', 8, N' м', 856, 26, 12817, 1, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (49, N'Переработка бумаги синий 0x2', 9, N' кг', 709, 47, 23157, 4, 1)
INSERT [dbo].[Material] ([ID], [Name], [CountInPackage], [UnitOfMeasurement], [CountInWarehourse], [MinRemainder], [Cost], [ID_type], [IsActive]) VALUES (50, N'Переработка бумаги белый 2x0', 5, N' м', 794, 17, 21637, 4, 1)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (1, N'Полотенце 28М Клубника', 334385, 9205, N'/Images/picture.png', 2, 6, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (2, N'Набор 24М Дыня', 337632, 11470, N'/Images/picture.png', 5, 5, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (3, N'Набор 9М Бриз', 259548, 2315, N'/Images/picture.png', 4, 5, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (4, N'Набор 50М Клубника', 278721, 14220, N'/Images/picture.png', 3, 1, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (5, N'Полотенце 24М Дыня', 264493, 10470, N'/Images/picture.png', 5, 10, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (6, N'Бумага 21М Дыня', 366160, 11064, N'\products\paper_2.jpeg', 1, 2, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (7, N'Полотенце 37М Клубника', 292358, 3961, N'/Images/picture.png', 4, 2, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (8, N'Набор 6М Бриз', 289779, 14154, N'/Images/picture.png', 1, 6, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (9, N'Бумага 37М Клубника', 442634, 12664, N'\products\paper_14.jpeg', 5, 4, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (10, N'Набор 41М Дыня', 385037, 3295, N'\products\paper_21.jpeg', 5, 9, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (11, N'Бумага 26М Ваниль', 444337, 3007, N'/Images/picture.png', 4, 4, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (12, N'Бумага 50М Ваниль', 454479, 3163, N'/Images/picture.png', 3, 9, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (13, N'Набор 25М Бриз', 434113, 13047, N'/Images/picture.png', 4, 4, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (14, N'Бумага 32М Бриз', 379800, 6832, N'/Images/picture.png', 1, 7, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (15, N'Полотенце 41М Дыня', 239349, 6238, N'/Images/picture.png', 2, 9, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (16, N'Бумага 9М Ваниль', 446348, 13568, N'/Images/picture.png', 3, 1, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (17, N'Бумага 3М Бриз', 260492, 8278, N'/Images/picture.png', 1, 9, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (18, N'Бумага 5М Дыня', 256862, 3712, N'\products\paper_5.jpeg', 5, 5, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (19, N'Полотенце 16М Ваниль', 259488, 10095, N'/Images/picture.png', 3, 6, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (20, N'Бумага 44М Бриз', 422185, 6441, N'/Images/picture.png', 2, 5, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (21, N'Набор 19М Дыня', 382063, 2373, N'/Images/picture.png', 1, 7, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (22, N'Бумага 29М Клубника', 334943, 5997, N'/Images/picture.png', 1, 10, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (23, N'Полотенце 27М Дыня', 238686, 7864, N'/Images/picture.png', 2, 2, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (24, N'Набор 11М Дыня', 450659, 5956, N'\products\paper_16.jpeg', 3, 7, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (25, N'Полотенце 48М Клубника', 292206, 9801, N'/Images/picture.png', 3, 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (26, N'Полотенце 16М Бриз', 418298, 7342, N'/Images/picture.png', 2, 1, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (27, N'Полотенце 14М Клубника', 309862, 10682, N'\products\paper_17.jpeg', 4, 8, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (28, N'Полотенце 43М Клубника', 425641, 14151, N'/Images/picture.png', 2, 6, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (29, N'Набор 19М Бриз', 277950, 9962, N'/Images/picture.png', 5, 9, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (30, N'Набор 32М Клубника', 351062, 4450, N'/Images/picture.png', 3, 8, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (31, N'Набор 26М Дыня', 279801, 4628, N'/Images/picture.png', 2, 1, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (32, N'Бумага 15М Клубника', 449359, 10009, N'/Images/picture.png', 3, 7, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (33, N'Полотенце 45М Бриз', 303994, 13081, N'\products\paper_6.jpeg', 2, 1, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (34, N'Набор 50М Бриз', 414595, 10750, N'\products\paper_8.jpeg', 4, 6, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (35, N'Набор 16М Дыня', 376834, 11927, N'/Images/picture.png', 4, 6, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (36, N'Бумага 45М Бриз', 374276, 13605, N'/Images/picture.png', 3, 9, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (37, N'Бумага 45М Клубника', 400484, 3475, N'/Images/picture.png', 3, 4, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (38, N'Бумага 16М Дыня', 262257, 9107, N'/Images/picture.png', 5, 2, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (39, N'Набор 40М Дыня', 346154, 3427, N'/Images/picture.png', 4, 8, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (40, N'Бумага 33М Бриз', 347239, 13767, N'/Images/picture.png', 5, 9, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (41, N'Полотенце 45М Клубника', 352034, 11939, N'/Images/picture.png', 2, 5, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (42, N'Набор 43М Клубника', 443538, 13786, N'/Images/picture.png', 1, 10, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (43, N'Набор 34М Ваниль', 316033, 13533, N'/Images/picture.png', 1, 4, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (44, N'Бумага 32М Дыня', 268393, 7424, N'/Images/picture.png', 4, 3, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (45, N'Бумага 12М Бриз', 426804, 10703, N'/Images/picture.png', 1, 4, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (46, N'Полотенце 6М Ваниль', 324941, 5594, N'/Images/picture.png', 1, 2, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (47, N'Полотенце 47М Клубника', 378723, 3871, N'/Images/picture.png', 4, 2, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (48, N'Полотенце 15М Бриз', 365615, 13013, N'/Images/picture.png', 1, 6, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (49, N'Набор 9М Дыня', 440942, 2580, N'/Images/picture.png', 3, 4, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (50, N'Набор 17М Клубника', 441239, 14863, N'/Images/picture.png', 2, 10, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (51, N'Набор 5М Бриз', 278382, 7325, N'/Images/picture.png', 3, 9, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (52, N'Набор 29М Ваниль', 344868, 7618, N'\products\paper_4.jpeg', 1, 9, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (53, N'Набор 31М Дыня', 449401, 5236, N'/Images/picture.png', 5, 10, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (54, N'Набор 45М Бриз', 349802, 12040, N'/Images/picture.png', 1, 8, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (55, N'Бумага 13М Дыня', 348651, 3477, N'/Images/picture.png', 3, 8, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (56, N'Набор 24М Клубника', 296007, 14162, N'/Images/picture.png', 2, 3, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (57, N'Набор 10М Дыня', 431234, 3816, N'\products\paper_22.jpeg', 4, 9, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (58, N'Бумага 12М Клубника', 456129, 6467, N'\products\paper_1.jpeg', 3, 4, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (59, N'Полотенце 11М Дыня', 400418, 11660, N'\products\paper_25.jpeg', 2, 7, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (60, N'Набор 42М Дыня', 390914, 14344, N'\products\paper_13.jpeg', 5, 10, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (61, N'Бумага 5М Бриз', 345239, 9243, N'/Images/picture.png', 1, 8, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (62, N'Набор 14М Дыня', 373939, 3382, N'/Images/picture.png', 2, 3, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (63, N'Бумага 33М Клубника', 252485, 4240, N'\products\paper_0.jpeg', 3, 6, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (64, N'Набор 34М Клубника', 381110, 2372, N'/Images/picture.png', 3, 1, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (65, N'Полотенце 14М Дыня', 331688, 10330, N'/Images/picture.png', 2, 8, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (66, N'Бумага 40М Бриз', 326200, 12927, N'\products\paper_19.jpeg', 5, 1, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (67, N'Бумага 20М Клубника', 253218, 11684, N'/Images/picture.png', 2, 6, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (68, N'Бумага 50М Бриз', 340583, 6788, N'\products\paper_15.jpeg', 4, 7, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (69, N'Полотенце 23М Ваниль', 437519, 3317, N'/Images/picture.png', 1, 10, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (70, N'Набор 8М Дыня', 240580, 7465, N'/Images/picture.png', 5, 2, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (71, N'Бумага 10М Клубника', 275591, 13600, N'\products\paper_7.jpeg', 4, 8, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (72, N'Набор 41М Клубника', 281425, 9908, N'\products\paper_23.jpeg', 4, 6, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (73, N'Набор 10М Ваниль', 261465, 13028, N'\products\paper_12.jpeg', 5, 3, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (74, N'Полотенце 17М Бриз', 309067, 13825, N'\products\paper_24.jpeg', 1, 6, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (75, N'Полотенце 27М Ваниль', 278463, 3978, N'\products\paper_10.jpeg', 3, 5, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (76, N'Полотенце 50М Ваниль', 310212, 13204, N'\products\paper_11.jpeg', 1, 10, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (77, N'Набор 20М Бриз', 377042, 9227, N'\products\paper_9.jpeg', 5, 9, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (78, N'Полотенце 47М Дыня', 294441, 11460, N'/Images/picture.png', 4, 5, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (79, N'Бумага 29М Дыня', 332522, 5439, N'\products\paper_18.jpeg', 3, 6, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (80, N'Полотенце 44М Ваниль', 357053, 3396, N'/Images/picture.png', 5, 1, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (81, N'Полотенце 7М Ваниль', 397143, 2868, N'/Images/picture.png', 2, 9, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (82, N'Бумага 49М Бриз', 414339, 10786, N'/Images/picture.png', 1, 6, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (83, N'Полотенце 7М Бриз', 350515, 4986, N'/Images/picture.png', 2, 2, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (84, N'Полотенце 25М Бриз', 258695, 3631, N'/Images/picture.png', 1, 8, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (85, N'Полотенце 17М Ваниль', 403054, 5048, N'/Images/picture.png', 2, 9, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (86, N'Бумага 14М Бриз', 310507, 7846, N'/Images/picture.png', 1, 3, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (87, N'Набор 40М Бриз', 353930, 12767, N'/Images/picture.png', 2, 8, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (88, N'Набор 22М Клубника', 360424, 13524, N'/Images/picture.png', 4, 3, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (89, N'Бумага 13М Бриз', 349861, 3842, N'/Images/picture.png', 4, 6, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (90, N'Бумага 7М Ваниль', 290729, 6934, N'/Images/picture.png', 4, 4, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (91, N'Набор 24М Ваниль', 374263, 3907, N'/Images/picture.png', 5, 9, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (92, N'Набор 43М Дыня', 330360, 5867, N'/Images/picture.png', 5, 4, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (93, N'Полотенце 33М Бриз', 297840, 4611, N'/Images/picture.png', 4, 1, 4, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (94, N'Набор 12М Бриз', 349614, 2551, N'\products\paper_3.jpeg', 1, 7, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (95, N'Бумага 38М Ваниль', 416066, 12175, N'/Images/picture.png', 2, 2, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (96, N'Бумага 20М Бриз', 285792, 14370, N'/Images/picture.png', 3, 7, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (97, N'Бумага 28М Дыня', 298632, 14671, N'/Images/picture.png', 4, 4, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (98, N'Бумага 10М Дыня', 446103, 13975, N'/Images/picture.png', 1, 3, 5, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (99, N'Набор 22М Бриз', 443382, 4501, N'/Images/picture.png', 3, 5, 3, 1)
GO
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (100, N'Набор 18М Ваниль', 331270, 11171, N'/Images/picture.png', 4, 8, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Article], [MinCost], [Image], [PeopleCount], [ShopNumber], [ID_type], [IsActive]) VALUES (101, N'Полотенце 28М Клубника', 334385, 9200, N'/Images/picture.png', 2, 6, 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (1, 63, 24, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (2, 71, 6, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (3, 37, 6, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (4, 58, 24, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (5, 94, 6, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (6, 1, 24, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (7, 2, 23, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (8, 63, 25, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (9, 11, 39, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (10, 19, 25, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (11, 94, 42, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (12, 47, 33, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (13, 52, 39, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (14, 28, 25, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (15, 1, 25, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (16, 59, 42, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (17, 57, 42, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (18, 67, 42, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (19, 70, 2, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (20, 70, 8, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (21, 79, 38, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (22, 44, 13, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (23, 52, 27, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (24, 11, 40, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (25, 66, 13, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (26, 18, 13, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (27, 10, 2, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (28, 92, 38, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (29, 33, 21, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (30, 67, 27, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (31, 96, 27, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (32, 16, 40, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (33, 99, 2, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (34, 34, 40, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (35, 99, 36, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (36, 55, 14, 9)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (37, 76, 13, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (38, 90, 40, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (39, 47, 40, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (40, 41, 13, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (41, 68, 8, 2)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (42, 19, 21, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (43, 24, 14, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (44, 33, 10, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (45, 16, 22, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (46, 64, 16, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (47, 70, 16, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (48, 92, 16, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (49, 78, 16, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (50, 94, 18, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (51, 10, 18, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (52, 40, 18, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (53, 72, 18, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (54, 47, 18, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (55, 11, 46, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (56, 58, 15, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (57, 66, 12, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (58, 77, 46, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (59, 41, 17, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (60, 76, 46, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (61, 24, 12, 6)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (62, 27, 46, 7)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (63, 47, 12, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (64, 64, 34, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (65, 18, 34, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (66, 32, 29, 15)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (67, 92, 5, 13)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (68, 67, 5, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (69, 27, 5, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (70, 72, 30, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (71, 79, 41, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (72, 11, 48, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (74, 66, 48, 18)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (75, 95, 47, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (76, 40, 32, 20)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (77, 41, 32, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (78, 41, 49, 14)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (79, 19, 7, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (80, 77, 35, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (81, 47, 28, 5)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (82, 63, 35, 1)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (83, 33, 28, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (84, 18, 7, 19)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (85, 66, 32, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (86, 52, 28, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (87, 100, 44, 8)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (88, 60, 37, 17)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (89, 76, 37, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (90, 52, 44, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (91, 49, 43, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (92, 34, 26, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (93, 71, 26, 11)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (94, 71, 11, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (95, 66, 44, 12)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (96, 92, 44, 16)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (97, 95, 11, 3)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (98, 32, 43, 4)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (99, 63, 37, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (100, 72, 44, 6)
GO
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (101, 1, 2, 10)
INSERT [dbo].[ProductMaterial] ([ID], [ID_prod], [ID_mat], [Count]) VALUES (102, 1, 1, 10)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeMaterial] ON 

INSERT [dbo].[TypeMaterial] ([ID], [Name]) VALUES (1, N' Пресс')
INSERT [dbo].[TypeMaterial] ([ID], [Name]) VALUES (2, N' Рулон')
INSERT [dbo].[TypeMaterial] ([ID], [Name]) VALUES (3, N' Гранулы')
INSERT [dbo].[TypeMaterial] ([ID], [Name]) VALUES (4, N' Нарезка')
SET IDENTITY_INSERT [dbo].[TypeMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (1, N'Три слоя')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (2, N'Два слоя')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (3, N'Детская')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (4, N'Супер мягкая')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (5, N'Один слой')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_TypeMaterial] FOREIGN KEY([ID_type])
REFERENCES [dbo].[TypeMaterial] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_TypeMaterial]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_TypeProduct1] FOREIGN KEY([ID_type])
REFERENCES [dbo].[TypeProduct] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_TypeProduct1]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([ID_mat])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ID_prod])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
