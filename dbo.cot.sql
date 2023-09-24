USE [university]
GO

/****** Object:  Table [dbo].[COT]    Script Date: 9/24/2023 10:35:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[COT](
	[cotitle] [varchar](50) NOT NULL,
	[coid] [int] NOT NULL,
	[cotype] [varchar](50) NOT NULL,
	[credit] [tinyint] NOT NULL,
 CONSTRAINT [PK_COT] PRIMARY KEY CLUSTERED 
(
	[coid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

