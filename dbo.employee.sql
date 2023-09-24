USE [Coffeeshop]
GO

/****** Object:  Table [dbo].[employee2]    Script Date: 9/24/2023 10:37:22 AM ******/
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

