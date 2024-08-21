USE [master]
GO
/****** Object:  Database [Coffeeshop]    Script Date: 8/21/2024 2:41:54 PM ******/
CREATE DATABASE [Coffeeshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coffeeshop', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Coffeeshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coffeeshop_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Coffeeshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Coffeeshop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coffeeshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coffeeshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coffeeshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coffeeshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coffeeshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coffeeshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coffeeshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coffeeshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coffeeshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coffeeshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coffeeshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coffeeshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coffeeshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coffeeshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coffeeshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coffeeshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coffeeshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coffeeshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coffeeshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coffeeshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coffeeshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coffeeshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coffeeshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coffeeshop] SET RECOVERY FULL 
GO
ALTER DATABASE [Coffeeshop] SET  MULTI_USER 
GO
ALTER DATABASE [Coffeeshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coffeeshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coffeeshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coffeeshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coffeeshop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Coffeeshop', N'ON'
GO
ALTER DATABASE [Coffeeshop] SET QUERY_STORE = OFF
GO
USE [Coffeeshop]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Coffeeshop]
GO
/****** Object:  Table [dbo].[customer2]    Script Date: 8/21/2024 2:41:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer2](
	[ordernumber] [int] NOT NULL,
	[foodid] [int] NOT NULL,
	[paymenttype] [varchar](20) NOT NULL,
	[subscriptioncode] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ordernumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee2]    Script Date: 8/21/2024 2:41:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee2](
	[elastname] [varchar](50) NOT NULL,
	[efirstname] [varchar](50) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[phonenumber] [varchar](20) NOT NULL,
	[employmentdate] [date] NOT NULL,
	[salary] [int] NOT NULL,
	[eaddress] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[elastname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu2]    Script Date: 8/21/2024 2:41:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu2](
	[foodid] [int] NOT NULL,
	[foodtype] [varchar](20) NOT NULL,
	[foodpay] [int] NOT NULL,
	[food] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[foodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order2]    Script Date: 8/21/2024 2:41:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order2](
	[elastname] [varchar](50) NOT NULL,
	[ordernumber] [int] NOT NULL,
	[foodid] [int] NOT NULL,
	[ordertime] [time](7) NOT NULL,
	[orderdate] [date] NOT NULL,
	[tablenumber] [tinyint] NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (13, 123456, N'creditcard', N'123asd')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (14, 123457, N'creditcard', N'123fgh')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (15, 123458, N'cash', N'123jkl')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (16, 123459, N'cash', N'123qwe')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (17, 123456, N'creditcard', N'123vbn')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (18, 123457, N'online', N'123zxc')
INSERT [dbo].[customer2] ([ordernumber], [foodid], [paymenttype], [subscriptioncode]) VALUES (19, 123456, N'creditcard', N'123rty')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'heidari', N'heidar', N'male', N'09176853346', CAST(N'2019-02-23' AS Date), 4000000, N'shiraz molasadra')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'hoseini', N'hosein', N'male', N'09175863396', CAST(N'2020-12-12' AS Date), 3000000, N'shiraz zargari')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'kamali', N'kamal', N'male', N'09174562588', CAST(N'2019-05-12' AS Date), 3500000, N'shiraz maaliabad')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'karami', N'sara', N'female', N'09376492537', CAST(N'2018-03-22' AS Date), 4500000, N'shiraz sadra')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'samimi', N'sara', N'female', N'09375631234', CAST(N'2020-03-03' AS Date), 3000000, N'shiraz zand')
INSERT [dbo].[employee2] ([elastname], [efirstname], [gender], [phonenumber], [employmentdate], [salary], [eaddress]) VALUES (N'shams', N'negin', N'female', N'09396859978', CAST(N'2019-10-13' AS Date), 3500000, N'shiraz motahari')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123456, N'drink', 35000, N'tea')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123457, N'drink', 55000, N'coffee')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123458, N'drink', 45000, N'orange juice')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123459, N'breakfast', 78000, N'pancake')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123460, N'breahfast', 75000, N'waffle')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123461, N'breakfast', 40000, N'egg')
INSERT [dbo].[menu2] ([foodid], [foodtype], [foodpay], [food]) VALUES (123462, N'dessert', 50000, N'cake')
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'hoseini', 13, 123456, CAST(N'10:00:00' AS Time), CAST(N'2023-05-30' AS Date), 10, 35000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'kamali', 14, 123457, CAST(N'11:00:00' AS Time), CAST(N'2023-05-30' AS Date), 9, 55000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'shams', 16, 123459, CAST(N'08:00:00' AS Time), CAST(N'2023-05-30' AS Date), 1, 78000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'hoseini', 16, 123459, CAST(N'08:00:00' AS Time), CAST(N'2023-05-30' AS Date), 1, 78000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'hoseini', 17, 123456, CAST(N'08:00:00' AS Time), CAST(N'2023-05-30' AS Date), 3, 35000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'hoseini', 18, 123457, CAST(N'10:00:00' AS Time), CAST(N'2023-05-30' AS Date), 10, 55000)
INSERT [dbo].[order2] ([elastname], [ordernumber], [foodid], [ordertime], [orderdate], [tablenumber], [total]) VALUES (N'samimi', 19, 123456, CAST(N'11:00:00' AS Time), CAST(N'2023-05-30' AS Date), 3, 35000)
ALTER TABLE [dbo].[customer2]  WITH CHECK ADD FOREIGN KEY([foodid])
REFERENCES [dbo].[menu2] ([foodid])
GO
ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([elastname])
REFERENCES [dbo].[employee2] ([elastname])
GO
ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([foodid])
REFERENCES [dbo].[menu2] ([foodid])
GO
ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([ordernumber])
REFERENCES [dbo].[customer2] ([ordernumber])
GO
USE [master]
GO
ALTER DATABASE [Coffeeshop] SET  READ_WRITE 
GO
