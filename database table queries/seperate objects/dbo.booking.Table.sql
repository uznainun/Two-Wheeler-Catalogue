USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[booking](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[u_name] [varchar](50) NOT NULL,
	[u_age] [numeric](18, 0) NOT NULL,
	[u_gender] [varchar](50) NOT NULL,
	[u_contact] [numeric](18, 0) NOT NULL,
	[u_email] [varchar](50) NOT NULL,
	[u_cityid] [numeric](18, 0) NOT NULL,
	[u_address] [varchar](50) NOT NULL,
	[p_id] [bigint] NOT NULL,
	[d_id] [bigint] NOT NULL,
	[dob] [varchar](50) NOT NULL,
 CONSTRAINT [PK_booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
