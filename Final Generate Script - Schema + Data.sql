USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[type]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](50) NOT NULL,
	[t_id] [bigint] NOT NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dealerregistration]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specification]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[p_id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[type] [bigint] NOT NULL,
	[brand] [bigint] NOT NULL,
	[s_desc] [varchar](3000) NULL,
	[l_desc] [varchar](3000) NULL,
	[d_id] [bigint] NOT NULL,
	[proimages] [varchar](50) NULL,
 CONSTRAINT [PK_product1] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[productfulldetails]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[productfulldetails]
AS
SELECT     dbo.product.p_id, dbo.product.p_name, dbo.product.price, dbo.type.type, dbo.brands.brand, dbo.product.s_desc, dbo.product.l_desc, dbo.product.d_id, dbo.product.proimages, 
                      dbo.Specification.product_color, dbo.Specification.mileage, dbo.Specification.bhp, dbo.Specification.tyre, dbo.Specification.fueltank, dbo.Specification.brakes, dbo.Specification.topspeed, 
                      dbo.dealerregistration.s_name, dbo.dealerregistration.d_name, dbo.dealerregistration.d_contact, dbo.dealerregistration.d_email, dbo.dealerregistration.d_address, dbo.dealerregistration.d_dp
FROM         dbo.product INNER JOIN
                      dbo.dealerregistration ON dbo.product.d_id = dbo.dealerregistration.d_id INNER JOIN
                      dbo.brands INNER JOIN
                      dbo.type ON dbo.brands.t_id = dbo.type.id ON dbo.product.brand = dbo.brands.id INNER JOIN
                      dbo.Specification ON dbo.product.p_id = dbo.Specification.p_id
GO
/****** Object:  View [dbo].[productview]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[productview]
AS
SELECT     dbo.product.p_id, dbo.product.p_name, dbo.product.price, dbo.product.s_desc, dbo.product.l_desc, dbo.product.d_id, dbo.brands.brand, dbo.type.type, dbo.product.proimages
FROM         dbo.product INNER JOIN
                      dbo.brands ON dbo.product.brand = dbo.brands.id INNER JOIN
                      dbo.type ON dbo.brands.t_id = dbo.type.id
GO
/****** Object:  Table [dbo].[admin_newsletter]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_newsletter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dealer_newsletter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[c_id] [bigint] IDENTITY(1,1) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[r_id] [bigint] NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dealer_registered_brands]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dealer_registered_brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[d_id] [bigint] NOT NULL,
	[b_id] [bigint] NOT NULL,
 CONSTRAINT [PK_dealer_registered_brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dealer_registered_type]    Script Date: 29-06-2022 14:16:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[usertype] [varchar](50) NOT NULL,
	[userid] [bigint] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pending_registration]    Script Date: 29-06-2022 14:16:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_images]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_images](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_id] [bigint] NOT NULL,
	[image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[r_id] [bigint] IDENTITY(1,1) NOT NULL,
	[region] [varchar](50) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock]    Script Date: 29-06-2022 14:16:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userregistration]    Script Date: 29-06-2022 14:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userregistration](
	[u_id] [bigint] IDENTITY(1,1) NOT NULL,
	[u_name] [varchar](50) NOT NULL,
	[u_age] [numeric](18, 0) NOT NULL,
	[u_gender] [varchar](50) NOT NULL,
	[u_contact] [numeric](18, 0) NOT NULL,
	[u_email] [varchar](50) NOT NULL,
	[u_pincode] [numeric](6, 0) NOT NULL,
	[u_cityid] [bigint] NOT NULL,
	[u_address] [varchar](50) NOT NULL,
	[u_dp] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[booking] ON 
GO
INSERT [dbo].[booking] ([id], [u_name], [u_age], [u_gender], [u_contact], [u_email], [u_cityid], [u_address], [p_id], [d_id], [dob]) VALUES (3, N'Basit', CAST(18 AS Numeric(18, 0)), N'Male', CAST(7006787893 AS Numeric(18, 0)), N'Basit@gmail.com', CAST(14 AS Numeric(18, 0)), N'Solina Payeen', 2, 6, N'29-06-2022')
GO
INSERT [dbo].[booking] ([id], [u_name], [u_age], [u_gender], [u_contact], [u_email], [u_cityid], [u_address], [p_id], [d_id], [dob]) VALUES (4, N'Basit', CAST(18 AS Numeric(18, 0)), N'Male', CAST(7006787893 AS Numeric(18, 0)), N'Basit@gmail.com', CAST(8 AS Numeric(18, 0)), N'Solina Payeen', 1, 7, N'29-06-2022')
GO
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
SET IDENTITY_INSERT [dbo].[brands] ON 
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (1, N'Boom Motors', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (2, N'TVS', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (3, N'Hero Moto Corp.', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (4, N'Honda', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (5, N'Bajaj', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (6, N'Suzuki', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (7, N'Yamaha', 1)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (8, N'Bajaj', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (9, N'Royal Enfield ', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (10, N'Suzuki Motorcycle ', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (11, N'Mahindra ', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (12, N'Yamaha ', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (13, N'Honda Motorcycle ', 2)
GO
INSERT [dbo].[brands] ([id], [brand], [t_id]) VALUES (14, N'TVS', 2)
GO
SET IDENTITY_INSERT [dbo].[brands] OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON 
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (1, N'Surat', 1)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (3, N'Rajkot', 1)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (4, N'Valsad', 1)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (5, N'Karbi Anglong', 2)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (6, N'Goalpara', 2)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (7, N'Mumbai', 3)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (8, N'Pune', 3)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (9, N'Navi ', 3)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (10, N'Chennai', 4)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (11, N' 	Vellore', 4)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (12, N'Srinagar', 5)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (13, N'Budgam', 5)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (14, N'Pulwama', 5)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (15, N'Jammu', 5)
GO
INSERT [dbo].[city] ([c_id], [city], [r_id]) VALUES (16, N'Doda', 5)
GO
SET IDENTITY_INSERT [dbo].[city] OFF
GO
SET IDENTITY_INSERT [dbo].[dealer_registered_brands] ON 
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (9, 6, 1)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (10, 6, 2)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (11, 6, 3)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (12, 6, 4)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (13, 6, 5)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (14, 6, 6)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (15, 6, 7)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (16, 6, 8)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (17, 6, 9)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (18, 6, 10)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (19, 6, 11)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (20, 6, 12)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (21, 6, 13)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (22, 6, 14)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (23, 7, 8)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (24, 7, 9)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (25, 7, 10)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (26, 7, 11)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (27, 7, 12)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (28, 7, 13)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (29, 7, 14)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (30, 8, 8)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (31, 8, 9)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (32, 8, 10)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (33, 8, 11)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (34, 8, 12)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (35, 8, 13)
GO
INSERT [dbo].[dealer_registered_brands] ([id], [d_id], [b_id]) VALUES (36, 8, 14)
GO
SET IDENTITY_INSERT [dbo].[dealer_registered_brands] OFF
GO
SET IDENTITY_INSERT [dbo].[dealer_registered_type] ON 
GO
INSERT [dbo].[dealer_registered_type] ([id], [d_id], [t_id]) VALUES (9, 6, 1)
GO
INSERT [dbo].[dealer_registered_type] ([id], [d_id], [t_id]) VALUES (10, 6, 2)
GO
INSERT [dbo].[dealer_registered_type] ([id], [d_id], [t_id]) VALUES (11, 7, 2)
GO
INSERT [dbo].[dealer_registered_type] ([id], [d_id], [t_id]) VALUES (12, 8, 2)
GO
SET IDENTITY_INSERT [dbo].[dealer_registered_type] OFF
GO
SET IDENTITY_INSERT [dbo].[dealerregistration] ON 
GO
INSERT [dbo].[dealerregistration] ([d_id], [s_name], [d_name], [d_age], [d_gender], [d_contact], [d_email], [d_pincode], [d_cityid], [d_address], [d_dp]) VALUES (6, N'Uznain United Limited', N'Uznain UN', CAST(18 AS Numeric(18, 0)), N'Male', CAST(7006787878 AS Numeric(18, 0)), N'UznainUN@gmail.com', CAST(190009 AS Numeric(6, 0)), 12, N'Bemina', N'6_user 2.png')
GO
INSERT [dbo].[dealerregistration] ([d_id], [s_name], [d_name], [d_age], [d_gender], [d_contact], [d_email], [d_pincode], [d_cityid], [d_address], [d_dp]) VALUES (7, N'MoonLand Bikes & Scooters', N'Moneasa', CAST(18 AS Numeric(18, 0)), N'Female', CAST(9685698874 AS Numeric(18, 0)), N'Moneasa5@Yahoo.com', CAST(190009 AS Numeric(6, 0)), 14, N'Awantipora', N'7_user 1.png')
GO
INSERT [dbo].[dealerregistration] ([d_id], [s_name], [d_name], [d_age], [d_gender], [d_contact], [d_email], [d_pincode], [d_cityid], [d_address], [d_dp]) VALUES (8, N'SuperBikes Station', N'Sabreen', CAST(18 AS Numeric(18, 0)), N'Female', CAST(7858986645 AS Numeric(18, 0)), N'Sabreen@gmail.com', CAST(190009 AS Numeric(6, 0)), 15, N'Jammu ', N'8_user 1.png')
GO
SET IDENTITY_INSERT [dbo].[dealerregistration] OFF
GO
SET IDENTITY_INSERT [dbo].[login] ON 
GO
INSERT [dbo].[login] ([id], [username], [password], [usertype], [userid]) VALUES (3, N'admin@admin.com', N'admin@admin.com', N'admin', 1)
GO
INSERT [dbo].[login] ([id], [username], [password], [usertype], [userid]) VALUES (7, N'UznainUN@gmail.com', N'7006787878/9729', N'dealer', 6)
GO
INSERT [dbo].[login] ([id], [username], [password], [usertype], [userid]) VALUES (8, N'Moneasa5@Yahoo.com', N'9685698874/6265', N'dealer', 7)
GO
INSERT [dbo].[login] ([id], [username], [password], [usertype], [userid]) VALUES (9, N'Sabreen@gmail.com', N'7858986645/1975', N'dealer', 8)
GO
SET IDENTITY_INSERT [dbo].[login] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([p_id], [p_name], [price], [type], [brand], [s_desc], [l_desc], [d_id], [proimages]) VALUES (1, N'Bajaj TS30 Scooty', 30000, 2, 8, N'A light two-wheeled open motor vehicle on which the driver sits over an enclosed engine with their legs together and their feet resting on a floorboard', N'A scooter is a small wheeled vehicle. A childs scooter has two wheels and is powered by pushing one foot against the ground.  The word scooter covers a wide variety of vehicles.', 7, N'1_fascino.jpg')
GO
INSERT [dbo].[product] ([p_id], [p_name], [price], [type], [brand], [s_desc], [l_desc], [d_id], [proimages]) VALUES (2, N'Pulsar 220', 90000, 1, 4, N'The Bajaj Pulsar 150 is powered by a 149.5 cc air-cooled engine which produces of power. It has a fuel tank of 15 L and a . The Bajaj Pulsar 150 starts at Rs 1.04 and goes up to Rs 1.13 Lakh (ex-showroom, Delhi). It is available in three variants', N'Fuel efficiency sportive bike high comfort, and performance delivery by this bike ', 6, N'2_bk1.jpg')
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[region] ON 
GO
INSERT [dbo].[region] ([r_id], [region]) VALUES (1, N'Gujarat')
GO
INSERT [dbo].[region] ([r_id], [region]) VALUES (2, N'Assam')
GO
INSERT [dbo].[region] ([r_id], [region]) VALUES (3, N'Maharashtra')
GO
INSERT [dbo].[region] ([r_id], [region]) VALUES (4, N'Tamil Nadu')
GO
INSERT [dbo].[region] ([r_id], [region]) VALUES (5, N'Jammu & Kashmir')
GO
SET IDENTITY_INSERT [dbo].[region] OFF
GO
SET IDENTITY_INSERT [dbo].[Specification] ON 
GO
INSERT [dbo].[Specification] ([id], [p_id], [product_color], [mileage], [bhp], [tyre], [fueltank], [brakes], [topspeed]) VALUES (2, 1, N'Red', N'10', N'10', N'Tube', N'10', N'Front', N'100')
GO
INSERT [dbo].[Specification] ([id], [p_id], [product_color], [mileage], [bhp], [tyre], [fueltank], [brakes], [topspeed]) VALUES (3, 2, N'black', N'10', N'250', N'Tube', N'5', N'Front', N'150')
GO
SET IDENTITY_INSERT [dbo].[Specification] OFF
GO
SET IDENTITY_INSERT [dbo].[stock] ON 
GO
INSERT [dbo].[stock] ([id], [p_id], [quantity]) VALUES (2, 1, 21)
GO
INSERT [dbo].[stock] ([id], [p_id], [quantity]) VALUES (3, 2, 49)
GO
SET IDENTITY_INSERT [dbo].[stock] OFF
GO
SET IDENTITY_INSERT [dbo].[type] ON 
GO
INSERT [dbo].[type] ([id], [type]) VALUES (1, N'bikes')
GO
INSERT [dbo].[type] ([id], [type]) VALUES (2, N'scooties')
GO
INSERT [dbo].[type] ([id], [type]) VALUES (3, N'both')
GO
SET IDENTITY_INSERT [dbo].[type] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dealerregistration"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "brands"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 111
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "type"
            Begin Extent = 
               Top = 6
               Left = 632
               Bottom = 96
               Right = 792
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Specification"
            Begin Extent = 
               Top = 6
               Left = 830
               Bottom = 126
               Right = 990
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productfulldetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productfulldetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productfulldetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 212
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "brands"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "type"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'productview'
GO
