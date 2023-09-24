USE [university]
GO

/****** Object:  Table [dbo].[STCOT]    Script Date: 9/24/2023 10:35:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STCOT](
	[stid] [int] NOT NULL,
	[coid] [int] NOT NULL,
	[term] [tinyint] NOT NULL,
	[year] [varchar](30) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[STCOT]  WITH CHECK ADD FOREIGN KEY([coid])
REFERENCES [dbo].[COT] ([coid])
GO

ALTER TABLE [dbo].[STCOT]  WITH CHECK ADD FOREIGN KEY([stid])
REFERENCES [dbo].[STT] ([stid])
GO

