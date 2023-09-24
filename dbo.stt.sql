USE [university]
GO

/****** Object:  Table [dbo].[STT]    Script Date: 9/24/2023 10:35:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[STT](
	[stid] [int] NOT NULL,
	[stname] [varchar](30) NOT NULL,
	[stmjr] [varchar](30) NOT NULL,
	[stdeg] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

