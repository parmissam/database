USE [Coffeeshop]
GO

/****** Object:  Table [dbo].[menu2]    Script Date: 9/24/2023 10:37:35 AM ******/
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

