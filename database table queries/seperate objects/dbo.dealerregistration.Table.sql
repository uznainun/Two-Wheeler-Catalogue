USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[dealerregistration]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dealerregistration](
	[d_id] [bigint] IDENTITY(1,1) NOT NULL,
	[s_name] [varchar](50) NOT NULL,
	[d_name] [varchar](50) NOT NULL,
	[d_age] [numeric](18, 0) NOT NULL,
	[d_gender] [varchar](50) NOT NULL,
	[d_contact] [numeric](18, 0) NOT NULL,
	[d_email] [varchar](50) NOT NULL,
	[d_pincode] [numeric](6, 0) NOT NULL,
	[d_cityid] [bigint] NOT NULL,
	[d_address] [varchar](50) NOT NULL,
	[d_dp] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
