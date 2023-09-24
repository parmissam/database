USE [Coffeeshop]
GO

/****** Object:  Table [dbo].[order2]    Script Date: 9/24/2023 10:37:49 AM ******/
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

ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([elastname])
REFERENCES [dbo].[employee2] ([elastname])
GO

ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([foodid])
REFERENCES [dbo].[menu2] ([foodid])
GO

ALTER TABLE [dbo].[order2]  WITH CHECK ADD FOREIGN KEY([ordernumber])
REFERENCES [dbo].[customer2] ([ordernumber])
GO

