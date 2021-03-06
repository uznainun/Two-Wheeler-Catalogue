USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[stock]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_id] [bigint] NOT NULL,
	[quantity] [bigint] NOT NULL,
 CONSTRAINT [PK_stock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
