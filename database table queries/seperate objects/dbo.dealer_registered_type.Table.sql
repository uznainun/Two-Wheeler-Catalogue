USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[dealer_registered_type]    Script Date: 08/15/2017 16:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dealer_registered_type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[d_id] [bigint] NOT NULL,
	[t_id] [bigint] NOT NULL,
 CONSTRAINT [PK_dealer_registered_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
