USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[product]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[p_id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](50) NOT NULL,
	[price] int NOT NULL,
	[type] [bigint] NOT NULL,
	[brand] [bigint] NOT NULL,
	[s_desc] [varchar](50) NULL,
	[l_desc] [varchar](150) NULL,
	[d_id] [bigint] NOT NULL,
	[proimages] [varchar](50) NULL,
 CONSTRAINT [PK_product1] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
