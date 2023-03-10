USE [master]
GO
/****** Object:  Database [BeserShop]    Script Date: 27.12.2022 17:35:30 ******/
CREATE DATABASE [BeserShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeserShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BeserShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BeserShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BeserShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BeserShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeserShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeserShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeserShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeserShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeserShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeserShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeserShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeserShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeserShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeserShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeserShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeserShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeserShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeserShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeserShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeserShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BeserShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeserShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeserShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeserShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeserShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeserShop] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BeserShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeserShop] SET RECOVERY FULL 
GO
ALTER DATABASE [BeserShop] SET  MULTI_USER 
GO
ALTER DATABASE [BeserShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeserShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeserShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeserShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeserShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BeserShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BeserShop', N'ON'
GO
ALTER DATABASE [BeserShop] SET QUERY_STORE = OFF
GO
USE [BeserShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerEmail] [nvarchar](50) NOT NULL,
	[CustomerPhone] [nvarchar](11) NOT NULL,
	[CustomerAdress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeatProducts]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeatProducts](
	[MeatProductID] [int] IDENTITY(1,1) NOT NULL,
	[MeatProductName] [nvarchar](50) NOT NULL,
	[MeatProductPrice] [int] NOT NULL,
	[MeatProductStock] [int] NOT NULL,
	[MeatProductDescription] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MeatProducts] PRIMARY KEY CLUSTERED 
(
	[MeatProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierAdress] [nvarchar](50) NOT NULL,
	[SupplierPhone] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeganProducts]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeganProducts](
	[VeganProductID] [int] IDENTITY(1,1) NOT NULL,
	[VeganProductName] [nvarchar](50) NOT NULL,
	[VeganProductPrice] [int] NOT NULL,
	[VeganProductStock] [int] NOT NULL,
	[VeganProductDescription] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VeganProducts] PRIMARY KEY CLUSTERED 
(
	[VeganProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VegetarianProducts]    Script Date: 27.12.2022 17:35:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VegetarianProducts](
	[VegetarianProductID] [int] IDENTITY(1,1) NOT NULL,
	[VegetarianProductName] [nvarchar](50) NOT NULL,
	[VegetarianProductPrice] [int] NOT NULL,
	[VegetarianProductStock] [int] NOT NULL,
	[VegetarianProductDescription] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VegetarianProducts] PRIMARY KEY CLUSTERED 
(
	[VegetarianProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223141202_CreateDb', N'3.1.8')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAdress]) VALUES (2, N'Rabia Demir', N'd.rabia@gmail.com', N'05467645380', N'İstabul')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAdress]) VALUES (4, N'Şerife Gökdaş', N'ŞerifeGkdş@gmail.com', N'05372651987', N'İstanbul')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerPhone], [CustomerAdress]) VALUES (5, N'Berfin Ukşul', N'Berfinuksul@gmail.com', N'05451987653', N'İzmir')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[MeatProducts] ON 

INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (1, N'Pirzola', 300, 20, N'Çok güzel et')
INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (2, N'bonfile', 350, 17, N'on numara beş yıldız....')
INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (4, N'Antirikot', 400, 127, N'Bunlar nasıl isimler antin kuntin')
INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (5, N'Kıyma', 85, 100, N'Ben sana kıyamammm')
INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (6, N'Kuş Başı', 100, 49, N'Kuşun başı küçücük onu da yemezsin beee')
INSERT [dbo].[MeatProducts] ([MeatProductID], [MeatProductName], [MeatProductPrice], [MeatProductStock], [MeatProductDescription]) VALUES (7, N'Salam', 45, 200, N'Azerbeycandan salamlaar')
SET IDENTITY_INSERT [dbo].[MeatProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAdress], [SupplierPhone]) VALUES (2, N'Hasan Demir', N'Ankara', N'02126756534')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAdress], [SupplierPhone]) VALUES (3, N'Ahmet Gökdaş', N'Konya', N'05324687976')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAdress], [SupplierPhone]) VALUES (4, N'Veli Ukşul', N'Antalya', N'05354189765')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[VeganProducts] ON 

INSERT [dbo].[VeganProducts] ([VeganProductID], [VeganProductName], [VeganProductPrice], [VeganProductStock], [VeganProductDescription]) VALUES (1, N'soya sütü', 60, 150, N'hayvansal hiç bir gıda bulunmamaktadır!!!')
SET IDENTITY_INSERT [dbo].[VeganProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[VegetarianProducts] ON 

INSERT [dbo].[VegetarianProducts] ([VegetarianProductID], [VegetarianProductName], [VegetarianProductPrice], [VegetarianProductStock], [VegetarianProductDescription]) VALUES (1, N'peynir', 54, 120, N'beyaz penir')
SET IDENTITY_INSERT [dbo].[VegetarianProducts] OFF
GO
USE [master]
GO
ALTER DATABASE [BeserShop] SET  READ_WRITE 
GO
