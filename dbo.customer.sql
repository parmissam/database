USE [Coffeeshop]
GO

/****** Object:  Table [dbo].[customer2]    Script Date: 9/24/2023 10:37:10 AM ******/
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

ALTER TABLE [dbo].[customer2]  WITH CHECK ADD FOREIGN KEY([foodid])
REFERENCES [dbo].[menu2] ([foodid])
GO

