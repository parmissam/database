USE [master]
GO
/****** Object:  Database [Kindergarten]    Script Date: 8/21/2024 2:44:46 PM ******/
CREATE DATABASE [Kindergarten]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kindergarten', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Kindergarten.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kindergarten_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Kindergarten_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Kindergarten] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kindergarten].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kindergarten] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kindergarten] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kindergarten] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kindergarten] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kindergarten] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kindergarten] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kindergarten] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kindergarten] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kindergarten] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kindergarten] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kindergarten] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kindergarten] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kindergarten] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kindergarten] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kindergarten] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kindergarten] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kindergarten] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kindergarten] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kindergarten] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kindergarten] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kindergarten] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kindergarten] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kindergarten] SET RECOVERY FULL 
GO
ALTER DATABASE [Kindergarten] SET  MULTI_USER 
GO
ALTER DATABASE [Kindergarten] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kindergarten] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kindergarten] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kindergarten] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kindergarten] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Kindergarten', N'ON'
GO
ALTER DATABASE [Kindergarten] SET QUERY_STORE = OFF
GO
USE [Kindergarten]
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
USE [Kindergarten]
GO
/****** Object:  Table [dbo].[EducationalPrograms]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationalPrograms](
	[period] [varchar](20) NOT NULL,
	[place] [varchar](80) NOT NULL,
	[Pkind] [varchar](50) NOT NULL,
	[pid] [int] NOT NULL,
	[Tid] [int] NOT NULL,
 CONSTRAINT [PK_EducationalPrograms] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[Eid] [int] NOT NULL,
	[Cid] [int] NOT NULL,
	[examinationscore] [tinyint] NOT NULL,
	[grade] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecuteP]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecuteP](
	[Pkind] [varchar](50) NOT NULL,
	[pdate] [date] NULL,
	[Kid] [int] NOT NULL,
	[Tid] [int] NOT NULL,
	[Pid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KindergartenAtmo]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KindergartenAtmo](
	[Kkind] [varchar](50) NOT NULL,
	[Kaddress] [varchar](100) NOT NULL,
	[Kid] [int] NOT NULL,
	[Kphone] [int] NOT NULL,
 CONSTRAINT [PK_KindergartenAtmo] PRIMARY KEY CLUSTERED 
(
	[Kid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeEmployee]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeEmployee](
	[Eid] [int] NOT NULL,
	[Ename] [varchar](50) NOT NULL,
	[Ephone] [int] NOT NULL,
	[Eaddress] [varchar](100) NOT NULL,
	[Epayment] [int] NOT NULL,
	[Etitle] [varbinary](30) NOT NULL,
	[Esex] [varchar](10) NOT NULL,
	[Kkind] [varchar](50) NOT NULL,
	[Tid] [int] NOT NULL,
	[Kid] [int] NOT NULL,
 CONSTRAINT [PK_OfficeEmployee] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[Fid] [int] NOT NULL,
	[Sid] [int] NULL,
	[Fname] [varchar](50) NOT NULL,
	[Sname] [varchar](50) NULL,
	[Fphone] [int] NOT NULL,
	[Sphone] [int] NULL,
	[Fjob] [varchar](50) NOT NULL,
	[Sjob] [varchar](50) NULL,
	[sedudeg] [varchar](50) NULL,
	[Fedudeg] [varchar](50) NOT NULL,
	[paddress] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayTuition]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayTuition](
	[Fid] [int] NOT NULL,
	[Eid] [int] NOT NULL,
	[financialstance] [varchar](10) NOT NULL,
	[paycode] [int] NOT NULL,
	[paykind] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Cid] [int] NOT NULL,
	[Cname] [varchar](50) NOT NULL,
	[Cbirthdate] [date] NOT NULL,
	[Chealth] [varchar](70) NOT NULL,
	[Csex] [varchar](10) NOT NULL,
	[Fid] [int] NOT NULL,
	[Tid] [int] NOT NULL,
	[Pkind] [varchar](50) NOT NULL,
	[Kid] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 8/21/2024 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Tid] [int] NOT NULL,
	[Taddress] [varchar](50) NOT NULL,
	[Tedudeg] [varchar](30) NOT NULL,
	[sex] [varchar](10) NOT NULL,
	[Tpayment] [int] NOT NULL,
	[Tname] [varchar](50) NOT NULL,
	[Tshift] [varchar](10) NOT NULL,
	[Kid] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_OfficeEmployee] FOREIGN KEY([Eid])
REFERENCES [dbo].[OfficeEmployee] ([Eid])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_OfficeEmployee]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([Cid])
REFERENCES [dbo].[Student] ([Cid])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[ExecuteP]  WITH CHECK ADD  CONSTRAINT [FK_ExecuteP_EducationalPrograms] FOREIGN KEY([Pid])
REFERENCES [dbo].[EducationalPrograms] ([pid])
GO
ALTER TABLE [dbo].[ExecuteP] CHECK CONSTRAINT [FK_ExecuteP_EducationalPrograms]
GO
ALTER TABLE [dbo].[ExecuteP]  WITH CHECK ADD  CONSTRAINT [FK_ExecuteP_KindergartenAtmo] FOREIGN KEY([Kid])
REFERENCES [dbo].[KindergartenAtmo] ([Kid])
GO
ALTER TABLE [dbo].[ExecuteP] CHECK CONSTRAINT [FK_ExecuteP_KindergartenAtmo]
GO
ALTER TABLE [dbo].[ExecuteP]  WITH CHECK ADD  CONSTRAINT [FK_ExecuteP_Teacher] FOREIGN KEY([Tid])
REFERENCES [dbo].[Teacher] ([Tid])
GO
ALTER TABLE [dbo].[ExecuteP] CHECK CONSTRAINT [FK_ExecuteP_Teacher]
GO
ALTER TABLE [dbo].[OfficeEmployee]  WITH CHECK ADD  CONSTRAINT [FK_OfficeEmployee_KindergartenAtmo] FOREIGN KEY([Kid])
REFERENCES [dbo].[KindergartenAtmo] ([Kid])
GO
ALTER TABLE [dbo].[OfficeEmployee] CHECK CONSTRAINT [FK_OfficeEmployee_KindergartenAtmo]
GO
ALTER TABLE [dbo].[OfficeEmployee]  WITH CHECK ADD  CONSTRAINT [FK_OfficeEmployee_Teacher] FOREIGN KEY([Tid])
REFERENCES [dbo].[Teacher] ([Tid])
GO
ALTER TABLE [dbo].[OfficeEmployee] CHECK CONSTRAINT [FK_OfficeEmployee_Teacher]
GO
ALTER TABLE [dbo].[PayTuition]  WITH CHECK ADD  CONSTRAINT [FK_PayTuition_OfficeEmployee] FOREIGN KEY([Eid])
REFERENCES [dbo].[OfficeEmployee] ([Eid])
GO
ALTER TABLE [dbo].[PayTuition] CHECK CONSTRAINT [FK_PayTuition_OfficeEmployee]
GO
ALTER TABLE [dbo].[PayTuition]  WITH CHECK ADD  CONSTRAINT [FK_PayTuition_Parents] FOREIGN KEY([Fid])
REFERENCES [dbo].[Parents] ([Fid])
GO
ALTER TABLE [dbo].[PayTuition] CHECK CONSTRAINT [FK_PayTuition_Parents]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_KindergartenAtmo] FOREIGN KEY([Kid])
REFERENCES [dbo].[KindergartenAtmo] ([Kid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_KindergartenAtmo]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parents] FOREIGN KEY([Fid])
REFERENCES [dbo].[Parents] ([Fid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Parents]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Teacher] FOREIGN KEY([Tid])
REFERENCES [dbo].[Teacher] ([Tid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_KindergartenAtmo] FOREIGN KEY([Kid])
REFERENCES [dbo].[KindergartenAtmo] ([Kid])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_KindergartenAtmo]
GO
USE [master]
GO
ALTER DATABASE [Kindergarten] SET  READ_WRITE 
GO
