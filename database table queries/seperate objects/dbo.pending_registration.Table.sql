USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[pending_registration]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pending_registration](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[d_id] [bigint] NULL,
 CONSTRAINT [PK_pending_registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
