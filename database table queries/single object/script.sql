USE [master]
GO
/****** Object:  Database [TwoWheelerCatalogue]    Script Date: 08/15/2017 16:14:06 ******/
CREATE DATABASE [TwoWheelerCatalogue] ON  PRIMARY 
( NAME = N'TwoWheelerCatalogue', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TwoWheelerCatalogue.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TwoWheelerCatalogue_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\TwoWheelerCatalogue_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TwoWheelerCatalogue] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TwoWheelerCatalogue].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ARITHABORT OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TwoWheelerCatalogue] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TwoWheelerCatalogue] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TwoWheelerCatalogue] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET  DISABLE_BROKER
GO
ALTER DATABASE [TwoWheelerCatalogue] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TwoWheelerCatalogue] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TwoWheelerCatalogue] SET  READ_WRITE
GO
ALTER DATABASE [TwoWheelerCatalogue] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TwoWheelerCatalogue] SET  MULTI_USER
GO
ALTER DATABASE [TwoWheelerCatalogue] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TwoWheelerCatalogue] SET DB_CHAINING OFF
GO
USE [TwoWheelerCatalogue]
GO
/****** Object:  Table [dbo].[product_images]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_images](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[p_id] [bigint] NOT NULL,
	[image] [varchar](50) NOT NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[pending_registration]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[login]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dealerregistration]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[dealer_registered_type]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[dealer_registered_brands]    Script Date: 08/15/2017 16:14:09 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[c_id] [bigint] IDENTITY(1,1) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[r_id] [bigint] NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brands]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](50) NOT NULL,
	[t_id] [bigint] NOT NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[booking]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[admin_newsletter]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_newsletter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dealer_newsletter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stock]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[Specification]    Script Date: 08/15/2017 16:14:09 ******/
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
/****** Object:  Table [dbo].[region]    Script Date: 08/15/2017 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[r_id] [bigint] IDENTITY(1,1) NOT NULL,
	[region] [varchar](50) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[productview]    Script Date: 08/15/2017 16:14:12 ******/
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
/****** Object:  View [dbo].[productfulldetails]    Script Date: 08/15/2017 16:14:12 ******/
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
