USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[Specification]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specification](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_id] [bigint] NOT NULL,
	[product_color] [varchar](50) NOT NULL,
	[mileage] [varchar](50) NOT NULL,
	[bhp] [varchar](50) NOT NULL,
	[tyre] [varchar](50) NOT NULL,
	[fueltank] [varchar](10) NOT NULL,
	[brakes] [varchar](50) NOT NULL,
	[topspeed] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Specification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
