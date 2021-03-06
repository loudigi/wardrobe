USE [master]
GO
/****** Object:  Database [MyWardrobe]    Script Date: 5/1/2017 2:52:47 AM ******/
CREATE DATABASE [MyWardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyWardrobe', FILENAME = N'C:\Users\Loudigi\MyWardrobe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyWardrobe_log', FILENAME = N'C:\Users\Loudigi\MyWardrobe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyWardrobe] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyWardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyWardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyWardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyWardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyWardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyWardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyWardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyWardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyWardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyWardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyWardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyWardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyWardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyWardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyWardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyWardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyWardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyWardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyWardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyWardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyWardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyWardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyWardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyWardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyWardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [MyWardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyWardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyWardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyWardrobe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyWardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyWardrobe] SET QUERY_STORE = OFF
GO
USE [MyWardrobe]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MyWardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TopdID] [int] NULL,
	[BottomID] [int] NULL,
	[ShoesID] [int] NULL,
	[AccessoryID] [int] NULL,
	[Description] [nvarchar](140) NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/1/2017 2:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](200) NULL,
	[Type] [nvarchar](40) NULL,
	[Color] [nvarchar](40) NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (1, N'Black Nixon', N'/Content/Images/accessories/access-15.jpg', N'Dressy', N'Black', 1, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (2, N'Crew Duffel Bag', N'/Content/Images/accessories/access-14.jpg', N'Travel Leather', N'Tan', 3, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (3, N'Aviators Plus Shades', N'/Content/Images/accessories/access-5.jpg', N'Sun Glasses', N'Gold', 2, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (4, N'Slim Wallet', N'/Content/Images/accessories/access-1.jpg', N'Leather', N'Dark Brown', 5, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (5, N'Collegiate Wallet ', N'/Content/Images/accessories/access-2.jpg', N'Polyester', N'Blue', 5, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (6, N'Balance Bracelet', N'/Content/Images/accessories/access-3.jpg', N'Jewelry', N'Gold', 5, 1)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (7, N'Blackout Lens', N'/Content/Images/accessories/access-4.jpg', N'Sun Glasses', N'Black', 4, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (8, N'Gray Slim Tie', N'/Content/Images/accessories/access-19.jpg', N'Tie', N'Gray', 3, 2)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (9, N'Fun Tick-Tock', N'/Content/Images/accessories/access-16.jpg', N'Watch', N'Blue', 2, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (10, N'Brixton Cap', N'/Content/Images/accessories/access-11.jpg', N'Hat', N'Light Gray', 5, 3)
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (11, N'Krill Socks', N'/Content/Images/accessories/access-8.jpg', N'Socks', N'Blue Stripes', 1, 3)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (1, N'Long Adventure Pants', N'/Content/Images/bottoms/long-pant-2.jpg', N'Chino', N'Blue', 1, 3)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (2, N'Ol Slacks', N'/Content/Images/bottoms/long-pant1.jpg', N'Slacks', N'Stone', 5, 2)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (3, N'Springer Pant', N'/Content/Images/bottoms/long-pant-3.jpg', N'Chino', N'Seafoam', 1, 2)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (4, N'Flex Chill Pants', N'/Content/Images/bottoms/long-pant-4.jpg', N'Jogger', N'Blue', 1, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (5, N'JL Slim Jeans', N'/Content/Images/bottoms/long-pant-5.jpg', N'Jean', N'Dark Blue', 1, 3)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (6, N'JL Slim Jeans Blk', N'/Content/Images/bottoms/long-pant-6.jpg', N'Jean', N'Black', 4, 3)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (7, N'Reebok Power Pant', N'/Content/Images/bottoms/long-pant-7.jpg', N'Gym', N'Black', 5, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (8, N'JL Wind Breaker', N'/Content/Images/bottoms/long-pant-8.jpg', N'Jogger', N'Yam', 3, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (9, N'Wolve Splashers', N'/Content/Images/bottoms/short-pant-1.jpg', N'Swim Trunks', N'Baby Blue Patterns', 1, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (10, N'Chubber', N'/Content/Images/bottoms/short-pant2.jpg', N'Shorts', N'Sky Blue', 2, 3)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (11, N'Flex shorts', N'/Content/Images/bottoms/short-pant3.jpg', N'Shorts', N'Light Gray', 2, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (12, N'Baller Smooth', N'/Content/Images/bottoms/short-pant4.jpg', N'Shorts', N'Dark Blue', 2, 4)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (13, N'Cubic Swimmer', N'/Content/Images/bottoms/short-pant5.jpg', N'Swim Trunks', N'Graphic', 2, 4)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (1, N'Formal')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (2, N'Business')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (3, N'Casual')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (4, N'Recreational')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (5, N'Any')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopdID], [BottomID], [ShoesID], [AccessoryID], [Description]) VALUES (1, N'That whatever work gear', 1, 1, 1, 1, N'This is for those days when you don''t want to think too hard')
INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopdID], [BottomID], [ShoesID], [AccessoryID], [Description]) VALUES (2, N'Feel the sun ', 2, 3, 8, 3, N'Lorem ipsum dolor sit ametadipiscing elit. ')
INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopdID], [BottomID], [ShoesID], [AccessoryID], [Description]) VALUES (3, N'On the local roads', 3, 5, 7, 2, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Lorem ipsum dolor.')
INSERT [dbo].[Outfits] ([OutfitID], [Name], [TopdID], [BottomID], [ShoesID], [AccessoryID], [Description]) VALUES (1002, N'Almost cold and rugged ', 7, 6, 6, 10, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna justo, lacinia eget')
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (1, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (2, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (3, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (4, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (5, N'Any')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (1, N'Quick Comfies', N'/Content/Images/shoes/shoes-10.jpg', N'Low Wingtip', N'Brown', 3, 3)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (2, N'Reebok Easys', N'/Content/Images/shoes/shoes-1.jpg', N'Sneaker', N'2-Green/Gray', 1, 4)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (3, N'Toms Scener', N'/Content/Images/shoes/shoes-3.jpg', N'Chucka', N'Gray/Jean', 3, 3)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (4, N'A Flyers', N'/Content/Images/shoes/shoes-4.jpg', N'Sneaker', N'White', 2, 4)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (5, N'Lunar Grands', N'/Content/Images/shoes/shoes-5.jpg', N'Boot', N'Tan', 1, 3)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (6, N'Mili Boot', N'/Content/Images/shoes/shoes-6.jpg', N'Boot', N'2-Gray/Brown', 3, 4)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (7, N'Hanns Slyer', N'/Content/Images/shoes/shoes-7.jpg', N'Sneaker', N'2-Tone Gray', 2, 3)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (8, N'Coastal Stepper', N'/Content/Images/shoes/shoes-9.jpg', N'Boat shoe', N'Tan', 1, 4)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (9, N'Lunar Flex', N'/Content/Images/shoes/shoes-11.jpg', N'Wingtip', N'tan', 3, 2)
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (10, N'Ascics', N'/Content/Images/shoes/shoes-2.jpg', N'Sneaker', N'White', 2, 4)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (1, N'Office Ginham', N'/Content/Images/tops/top-15.jpg', N'Button Up', N'Pattern', 3, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (2, N'Summer JT', N'/Content/Images/tops/top-1.jpg', N'Short sleeve Button up  ', N'White with Pattern', 2, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (3, N'Ligh Breezer', N'/Content/Images/tops/top-2.jpg', N'Short sleeve', N'Pink', 2, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (4, N'Thick Outer ', N'/Content/Images/tops/top-3.jpg', N'Jacket', N'Dark Blue', 3, 4)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (5, N'Yeezy Hoodie', N'/Content/Images/tops/top-8.jpg', N'Hoodie', N'Olive', 3, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (6, N'Styling White Dancer', N'/Content/Images/tops/top-10.jpg', N'Button Up', N'White', 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (7, N'Battle Jacket', N'/Content/Images/tops/top-13.jpg', N'Jecket', N'Mili Green', 3, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (8, N'Classic Biz', N'/Content/Images/tops/top-16.jpg', N'Button Up', N'Blue', 5, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (9, N'Chill Hoodie', N'/Content/Images/tops/top-12.jpg', N'Hoodie', N'Dark Blue', 1, 4)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (10, N'Stunt Blazer', N'/Content/Images/tops/top-9.jpg', N'Jacket', N'Black', 5, 1)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (11, N'Camp Sweater', N'/Content/Images/tops/top-11.jpg', N'Sweater', N'Stripes', 1, 3)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (12, N'Work Pinkie', N'/Content/Images/tops/top-17.jpg', N'Button up', N'Pink', 2, 2)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [SeasonID], [OccasionID]) VALUES (13, N'Bro Shirt', N'/Content/Images/tops/top-6.jpg', N'Polo', N'Blue', 2, 3)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Accessories] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Accessories]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopdID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasions]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [MyWardrobe] SET  READ_WRITE 
GO
