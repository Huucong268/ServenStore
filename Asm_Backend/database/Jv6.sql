USE [master]
GO
/****** Object:  Database [Java6_Asm]    Script Date: 17/04/2025 10:09:45 AM ******/
CREATE DATABASE [Java6_Asm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Java6_Asm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DAFPL\MSSQL\DATA\Java6_Asm.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Java6_Asm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DAFPL\MSSQL\DATA\Java6_Asm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Java6_Asm] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Java6_Asm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Java6_Asm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Java6_Asm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Java6_Asm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Java6_Asm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Java6_Asm] SET ARITHABORT OFF 
GO
ALTER DATABASE [Java6_Asm] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Java6_Asm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Java6_Asm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Java6_Asm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Java6_Asm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Java6_Asm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Java6_Asm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Java6_Asm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Java6_Asm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Java6_Asm] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Java6_Asm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Java6_Asm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Java6_Asm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Java6_Asm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Java6_Asm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Java6_Asm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Java6_Asm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Java6_Asm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Java6_Asm] SET  MULTI_USER 
GO
ALTER DATABASE [Java6_Asm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Java6_Asm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Java6_Asm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Java6_Asm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Java6_Asm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Java6_Asm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Java6_Asm] SET QUERY_STORE = ON
GO
ALTER DATABASE [Java6_Asm] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Java6_Asm]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[IsDefault] [bit] NULL,
	[PhoneNumber] [varchar](255) NULL,
	[Username] [nvarchar](255) NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](6) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[ParentCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteProduct]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LikedAt] [datetime2](6) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](6) NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[AddressId] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](6) NOT NULL,
	[Description] [varchar](255) NULL,
	[Price] [float] NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
	[SalePrice] [float] NULL,
	[SoldQuantity] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSpecification]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSpecification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SpecTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationType]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpecName] [nvarchar](255) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17/04/2025 10:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](6) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](255) NOT NULL,
	[Role] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Address], [IsDefault], [PhoneNumber], [Username], [UserId]) VALUES (1, N'tphcm', 1, N'0123465789', N'tien', 1)
INSERT [dbo].[Address] ([Id], [Address], [IsDefault], [PhoneNumber], [Username], [UserId]) VALUES (2, N'tan binh - hcm', 0, N'0123456798', N'tien tan binh', 1)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [CreatedAt], [UserId]) VALUES (3, CAST(N'2025-04-14T20:42:33.9333330' AS DateTime2), 1)
INSERT [dbo].[Cart] ([Id], [CreatedAt], [UserId]) VALUES (4, CAST(N'2025-04-17T09:28:44.0900000' AS DateTime2), 8)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([Id], [Quantity], [CartId], [ProductId]) VALUES (6, 1, 3, 13)
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (1, N'Điện thoại', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (7, N'MSI', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (8, N'ấdf', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (13, N'sfsdf', 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (16, N'fdgdf', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (17, N'LapTop', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategory]) VALUES (18, N'Oppo', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (1, N'http://res.cloudinary.com/ddclol9ih/image/upload/c_scale,w_1080/h5xaym5frk1xtache8se', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (2, N'http://res.cloudinary.com/ddclol9ih/image/upload/c_scale,w_1080/sute25fae5ytvw4jhqvq', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (7, N'http://res.cloudinary.com/ddclol9ih/image/upload/c_scale,w_1080/iqqelr6f5fiazyxmvnlb', 13)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (5, 1, 2, 32, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (6, 2, 2, 32, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (7, 2, 1, 33, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (8, 1, 1, 33, 13)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (15, 4, 2, 35, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (22, 2, 1, 35, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (45, 10000000, 2, 61, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (46, 10000000, 1, 62, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (47, 10000000, 1, 63, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (70, 100, 2, 90, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (71, 100, 2, 91, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (72, 100, 2, 92, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (73, 100, 1, 93, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (75, 100, 2, 95, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (76, 100, 2, 96, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (77, 100, 4, 97, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (78, 100, 2, 98, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (79, 10000000, 2, 98, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (80, 100, 1, 99, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (81, 10000000, 1, 99, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (82, 100, 1, 100, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (83, 10000000, 1, 100, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (84, 100, 1, 101, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (85, 10000000, 1, 101, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (86, 100, 1, 102, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (87, 100, 1, 102, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (90, 100, 1, 105, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (91, 100, 1, 105, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (92, 100, 1, 106, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (93, 100, 1, 107, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (94, 100, 1, 108, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (95, 100, 2, 109, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (96, 10000000, 1, 110, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (97, 2, 1, 110, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (98, 10000000, 3, 111, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (99, 2, 2, 111, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (100, 100, 2, 112, 6)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (101, 100, 2, 112, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (103, 2, 1, 113, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (104, 1, 1, 113, 13)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (105, 16000000, 1, 114, 13)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (106, 15000000, 1, 114, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (107, 16000000, 1, 115, 13)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (108, 15000000, 1, 115, 7)
INSERT [dbo].[OrderDetail] ([Id], [CurrentPrice], [Quantity], [OrderId], [ProductId]) VALUES (109, 16000000, 1, 116, 13)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (32, CAST(N'2025-04-12T21:55:12.6680000' AS DateTime2), 6, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (33, CAST(N'2025-04-12T22:26:15.8570000' AS DateTime2), 300000000, 2, 4, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (34, CAST(N'2025-04-12T23:33:43.3190000' AS DateTime2), 2, 2, 3, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (35, CAST(N'2025-04-12T23:48:32.4740000' AS DateTime2), 4, 2, 5, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (58, CAST(N'2025-04-14T17:50:22.5840000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (59, CAST(N'2025-04-14T17:51:48.5750000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (60, CAST(N'2025-04-14T17:52:18.1150000' AS DateTime2), 1, 2, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (61, CAST(N'2025-04-14T17:53:13.3550000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (62, CAST(N'2025-04-14T17:54:18.4080000' AS DateTime2), 10000000, 2, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (63, CAST(N'2025-04-14T17:55:01.1250000' AS DateTime2), 10000000, 2, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (67, CAST(N'2025-04-14T17:57:49.3640000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (68, CAST(N'2025-04-14T17:58:36.0390000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (70, CAST(N'2025-04-14T18:00:02.8290000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (71, CAST(N'2025-04-14T18:00:31.4940000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (90, CAST(N'2025-04-14T19:23:08.2960000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (91, CAST(N'2025-04-14T19:23:49.4750000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (92, CAST(N'2025-04-14T19:26:17.6960000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (93, CAST(N'2025-04-14T19:28:06.7540000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (95, CAST(N'2025-04-14T19:35:07.5590000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (96, CAST(N'2025-04-14T19:35:42.7500000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (97, CAST(N'2025-04-14T19:37:12.4600000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (98, CAST(N'2025-04-14T19:46:22.2950000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (99, CAST(N'2025-04-14T19:46:42.6010000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (100, CAST(N'2025-04-14T19:47:01.8210000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (101, CAST(N'2025-04-14T19:49:37.9620000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (102, CAST(N'2025-04-14T19:57:40.9900000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (105, CAST(N'2025-04-14T20:09:40.6810000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (106, CAST(N'2025-04-14T20:18:27.9220000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (107, CAST(N'2025-04-14T20:18:50.3050000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (108, CAST(N'2025-04-14T20:20:04.4550000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (109, CAST(N'2025-04-14T20:20:17.2450000' AS DateTime2), 200, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (110, CAST(N'2025-04-14T20:21:27.1660000' AS DateTime2), 10000002, 2, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (111, CAST(N'2025-04-14T20:23:23.6520000' AS DateTime2), 30000004, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (112, CAST(N'2025-04-16T11:18:05.4720000' AS DateTime2), 200, 1, 2, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (113, CAST(N'2025-04-16T23:13:48.9910000' AS DateTime2), 3, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (114, CAST(N'2025-04-17T09:35:21.1460000' AS DateTime2), 31000000, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (115, CAST(N'2025-04-17T09:41:23.8530000' AS DateTime2), 31000000, 1, 1, 1)
INSERT [dbo].[Orders] ([Id], [CreatedAt], [TotalAmount], [AddressId], [OrderStatusId], [UserId]) VALUES (116, CAST(N'2025-04-17T09:42:08.9070000' AS DateTime2), 16000000, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([Id], [StatusName]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[OrderStatus] ([Id], [StatusName]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[OrderStatus] ([Id], [StatusName]) VALUES (3, N'Đang giao')
INSERT [dbo].[OrderStatus] ([Id], [StatusName]) VALUES (4, N'Đã giao')
INSERT [dbo].[OrderStatus] ([Id], [StatusName]) VALUES (5, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [CreatedAt], [Description], [Price], [ProductName], [SalePrice], [SoldQuantity], [StockQuantity], [CategoryId], [ProductTypeId]) VALUES (6, CAST(N'2025-04-09T20:22:36.0433330' AS DateTime2), N'test', 10000000, N'test21', 0, 31, 78, 1, 1)
INSERT [dbo].[Product] ([Id], [CreatedAt], [Description], [Price], [ProductName], [SalePrice], [SoldQuantity], [StockQuantity], [CategoryId], [ProductTypeId]) VALUES (7, CAST(N'2025-04-09T23:21:29.4000000' AS DateTime2), N'test2', 15000000, N'test2', 0, 9, 92, 1, 1)
INSERT [dbo].[Product] ([Id], [CreatedAt], [Description], [Price], [ProductName], [SalePrice], [SoldQuantity], [StockQuantity], [CategoryId], [ProductTypeId]) VALUES (13, CAST(N'2025-04-12T21:10:28.5390000' AS DateTime2), N'testsa', 16000000, N'testsa', 0, 4, 96, 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSpecification] ON 

INSERT [dbo].[ProductSpecification] ([Id], [Name], [Value], [ProductId], [SpecTypeId]) VALUES (2, N'Hệ điều hành', N'IOS', 6, 1)
INSERT [dbo].[ProductSpecification] ([Id], [Name], [Value], [ProductId], [SpecTypeId]) VALUES (6, N'tesst', N'tesst1', 6, 2)
INSERT [dbo].[ProductSpecification] ([Id], [Name], [Value], [ProductId], [SpecTypeId]) VALUES (17, N'test', N'test', 13, 13)
INSERT [dbo].[ProductSpecification] ([Id], [Name], [Value], [ProductId], [SpecTypeId]) VALUES (18, N'a', N'a', 6, 13)
SET IDENTITY_INSERT [dbo].[ProductSpecification] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [NameType]) VALUES (1, N'Điện thoại')
INSERT [dbo].[ProductType] ([Id], [NameType]) VALUES (10, N'test12345sfsdf')
INSERT [dbo].[ProductType] ([Id], [NameType]) VALUES (32, N'sfsdf')
INSERT [dbo].[ProductType] ([Id], [NameType]) VALUES (34, N'LapTop')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[SpecificationType] ON 

INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (1, N'Cấu hình', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (2, N'Camera && Màn hình', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (3, N'Pin && Sạc', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (4, N'Tiện ích', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (5, N'Kết nối', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (13, N'Thiết kế và chất liệu', 1)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (14, N'test2', 10)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (15, N'test1', 10)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (46, N'abc', 32)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (49, N'Pin', 34)
INSERT [dbo].[SpecificationType] ([Id], [SpecName], [ProductTypeId]) VALUES (50, N'Màn HÌnh', 34)
SET IDENTITY_INSERT [dbo].[SpecificationType] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (1, CAST(N'2025-04-09T20:16:12.2430000' AS DateTime2), N'tienvt@gmail.com', N'vo thanh tien23', N'$2a$10$Q2DzcsqBI5HAEEYBEW9PfeeA4F/GNF.FVfyG3S0RSj4ZgAUXJ0kQG', N'03857422766', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (2, CAST(N'2025-04-09T23:39:06.1740000' AS DateTime2), N'tien2@gmail.com', N'tien2', N'$2a$10$e9q0NQuKju8S7kzxWmmIXOZT1M5UwS.TLKVDczCCV7LPfibffG186', N'01234567777', 1)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (3, CAST(N'2025-04-12T23:47:11.3560000' AS DateTime2), N'tien32@gmail.com', N'tien3', N'$2a$10$dU0y99Vay40YEpOiB9lsq.RGihAL.27Sr8WGm9KKglS8MLb4GXq3q', N'0385742222', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (4, CAST(N'2025-04-13T20:53:53.5520000' AS DateTime2), N'thanhtien2@gmail.com', N'thanh tiến 2', N'$2a$10$V.Wp2o2EusHhkfylrufNgujfJDa3K2n5eHyeBIIv.rUHkoUyV7h6m', N'038574611164', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (5, CAST(N'2025-04-16T18:00:16.8390000' AS DateTime2), N'tien3@gmail.com', N'tien3', N'$2a$10$CYGEka//EY7.BTL7n2n8K.cneNWal3uBl0M2PKOqojYQtKznQrENm', N'0123456777', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (6, CAST(N'2025-04-17T00:10:11.1430000' AS DateTime2), N'asfadsf@gmail.com', N'adfadsf', N'$2a$10$y5fY.es60PDE4TftcVtYyO5zzgEoDvYqa9RWGIhy9pNqQEZ9VQdFu', N'01234648799', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (7, CAST(N'2025-04-17T00:13:35.0240000' AS DateTime2), N'tienafjlka@gmail.com', N'tienafjlka', N'$2a$10$Kgym3QbZKacuzhfYKN081.S363A4ZVetQ5jJQf8K1mnydW3cf/6du', N'0123897987', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (8, CAST(N'2025-04-17T00:21:06.2050000' AS DateTime2), N'tien1910hihi@gmail.com', N'tien1910hihi', N'$2a$10$LYHhosxmQWFSNyGawcs9bOjQ.CrkB3uMsmUKBDPZuIAnOxQg3wSJW', N'01469876454', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (9, CAST(N'2025-04-17T09:33:24.3160000' AS DateTime2), N'tienvothanh@gmail.com', N'vo thanh tien', N'$2a$10$rAZp8XVtY.DSOjLOK9S9eun5KaGvJziYYMXDr0hjwZUoP3X/bRdVO', N'03857464654', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (10, CAST(N'2025-04-17T09:39:03.6520000' AS DateTime2), N'vothanhtien2@gmail.com', N'vo thanh tien23', N'$2a$10$J0VHq0G5ivPmew/sTDdNOOcn07qPuqmOV/46/m9rH94ljEmaTAyvy', N'0356879877', 0)
INSERT [dbo].[Users] ([Id], [CreatedAt], [Email], [FullName], [Password], [PhoneNumber], [Role]) VALUES (11, CAST(N'2025-04-17T09:52:19.1010000' AS DateTime2), N'thanhtienvo1910@gmail.com', N'thanhtienvo1910', N'$2a$10$xgtVzQ9ccjvGm8Uv/3nyEOlsQyO4RB71E5oaM/2m.FGahPD9FX6N2', N'045646578998', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKi9dwettmpsbx4vo7iofxcyv5j]    Script Date: 17/04/2025 10:09:45 AM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UKi9dwettmpsbx4vo7iofxcyv5j] UNIQUE NONCLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKjdfr6kjrxekx1j5vrr77rp44t]    Script Date: 17/04/2025 10:09:45 AM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UKjdfr6kjrxekx1j5vrr77rp44t] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK25fccf81ln73y8xkd83p0wwj3] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK25fccf81ln73y8xkd83p0wwj3]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FKd4vh62m3vxqrmasrfirk0j008] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FKd4vh62m3vxqrmasrfirk0j008]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK6unelr9lsy26gw9da5tuuxcsh] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK6unelr9lsy26gw9da5tuuxcsh]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FKexwt92q78beap0fhm7s4xyfjw] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FKexwt92q78beap0fhm7s4xyfjw]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK4ycck9flg2rg0f6kmenndkt9m] FOREIGN KEY([ParentCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK4ycck9flg2rg0f6kmenndkt9m]
GO
ALTER TABLE [dbo].[FavoriteProduct]  WITH CHECK ADD  CONSTRAINT [FK4e856odt0o1c17xlumi1984b] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FavoriteProduct] CHECK CONSTRAINT [FK4e856odt0o1c17xlumi1984b]
GO
ALTER TABLE [dbo].[FavoriteProduct]  WITH CHECK ADD  CONSTRAINT [FKkpi7y16mdvk2wneiq4pfyj8tj] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[FavoriteProduct] CHECK CONSTRAINT [FKkpi7y16mdvk2wneiq4pfyj8tj]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FKfl92xixhcy2llenl24btmg279] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FKfl92xixhcy2llenl24btmg279]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK2bl00vgeri9tdqj2fllxbf7ra] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK2bl00vgeri9tdqj2fllxbf7ra]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKlv6an4p1q7vvtiqp3c8s22dvd] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKlv6an4p1q7vvtiqp3c8s22dvd]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKh2hm970mbhvys5crl45oesc7m] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKh2hm970mbhvys5crl45oesc7m]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKlj9lgmu9u65vgmm6a9tmnjry7] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKlj9lgmu9u65vgmm6a9tmnjry7]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKmkafs9r5111t7lj0ogwf744cn] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKmkafs9r5111t7lj0ogwf744cn]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK6pnobu31k3yhhmk45s97imkui] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK6pnobu31k3yhhmk45s97imkui]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FKriw7suc5kberhel3wkxat186g] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FKriw7suc5kberhel3wkxat186g]
GO
ALTER TABLE [dbo].[ProductSpecification]  WITH CHECK ADD  CONSTRAINT [FK5nj1fkln9gxk3k5q2bcbto4] FOREIGN KEY([SpecTypeId])
REFERENCES [dbo].[SpecificationType] ([Id])
GO
ALTER TABLE [dbo].[ProductSpecification] CHECK CONSTRAINT [FK5nj1fkln9gxk3k5q2bcbto4]
GO
ALTER TABLE [dbo].[ProductSpecification]  WITH CHECK ADD  CONSTRAINT [FK7ikqluqq2cjo2ma67gsfok2mp] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductSpecification] CHECK CONSTRAINT [FK7ikqluqq2cjo2ma67gsfok2mp]
GO
ALTER TABLE [dbo].[SpecificationType]  WITH CHECK ADD  CONSTRAINT [FK19q4lkrxfo6lcirqu0bhn7f9f] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[SpecificationType] CHECK CONSTRAINT [FK19q4lkrxfo6lcirqu0bhn7f9f]
GO
USE [master]
GO
ALTER DATABASE [Java6_Asm] SET  READ_WRITE 
GO
