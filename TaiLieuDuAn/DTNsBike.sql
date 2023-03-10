USE [master]
GO
/****** Object:  Database [DTNsBike]    Script Date: 06/02/2023 9:38:00 CH ******/
CREATE DATABASE [DTNsBike]
GO
ALTER DATABASE [DTNsBike] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [DTNsBike] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DTNsBike] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DTNsBike] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DTNsBike] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DTNsBike] SET ARITHABORT OFF 
GO
ALTER DATABASE [DTNsBike] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DTNsBike] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DTNsBike] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DTNsBike] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DTNsBike] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DTNsBike] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DTNsBike] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DTNsBike] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DTNsBike] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DTNsBike] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DTNsBike] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DTNsBike] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DTNsBike] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DTNsBike] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DTNsBike] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DTNsBike] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DTNsBike] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DTNsBike] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DTNsBike] SET  MULTI_USER 
GO
ALTER DATABASE [DTNsBike] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DTNsBike] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DTNsBike] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DTNsBike] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DTNsBike] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DTNsBike] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DTNsBike] SET QUERY_STORE = OFF
GO
USE [DTNsBike]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[lastName] [nvarchar](50) NULL,
	[middleName] [nvarchar](100) NULL,
	[firstName] [nvarchar](100) NULL,
	[gender] [nvarchar](10) NULL,
	[birthday] [date] NULL,
	[avatar] [nvarchar](100) NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](50) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthenticPhotos]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthenticPhotos](
	[AuthenticPhotoId] [int] IDENTITY(1,1) NOT NULL,
	[photoName] [nvarchar](100) NOT NULL,
	[productReviewId] [int] NOT NULL,
 CONSTRAINT [PK_AuthenticPhotos] PRIMARY KEY CLUSTERED 
(
	[AuthenticPhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[authoritiesId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[roleId] [nvarchar](50) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[authoritiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[blogId] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [nvarchar](500) NULL,
	[contents] [nvarchar](max) NOT NULL,
	[images] [nvarchar](500) NULL,
	[createDate] [date] NOT NULL,
	[views] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[blogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[brandId] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](100) NOT NULL,
	[image] [nvarchar](100) NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[brandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[cartId] [nvarchar](60) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[productDetailId] [int] NOT NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_Carts_ProductIdDetail] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC,
	[productDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[typeId] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[colorId] [nvarchar](10) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[colorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[contactId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](150) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailPhotos]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailPhotos](
	[detailPhotoId] [int] IDENTITY(1,1) NOT NULL,
	[photoName] [nvarchar](100) NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_DetailPhotos] PRIMARY KEY CLUSTERED 
(
	[detailPhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[discountId] [nvarchar](50) NOT NULL,
	[value] [float] NOT NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[discountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[favoriteId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[favoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[productDetailId] [int] NOT NULL,
	[size] [nvarchar](50) NULL,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[amount] [int] NOT NULL,
	[vat] [float] NOT NULL,
	[warrantyPeriod] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](150) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[saleId] [nvarchar](100) NULL,
	[saleValue] [float] NULL,
	[purchaseDate] [date] NOT NULL,
	[statusId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origins]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origins](
	[originId] [int] IDENTITY(1,1) NOT NULL,
	[madeIn] [nvarchar](100) NOT NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Origins] PRIMARY KEY CLUSTERED 
(
	[originId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[productDetailId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[sizeId] [nvarchar](10) NULL,
	[colorId] [nvarchar](10) NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[productDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPriceHistories]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPriceHistories](
	[productPriceHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[productId] [int] NOT NULL,
	[priceOld] [float] NOT NULL,
	[priceNew] [float] NOT NULL,
	[timeChange] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductPriceHistorys] PRIMARY KEY CLUSTERED 
(
	[productPriceHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviews]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviews](
	[productRevewId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[productId] [int] NOT NULL,
	[comment] [nvarchar](500) NULL,
	[date] [date] NOT NULL,
	[stars] [int] NOT NULL,
 CONSTRAINT [PK_ProductReviews] PRIMARY KEY CLUSTERED 
(
	[productRevewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NOT NULL,
	[vat] [float] NULL,
	[warrantyPeriod] [int] NULL,
	[description] [nvarchar](max) NULL,
	[avaliable] [bit] NOT NULL,
	[categoryId] [int] NOT NULL,
	[discountId] [nvarchar](50) NULL,
	[brandId] [int] NULL,
	[originId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleId] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[saleId] [nvarchar](100) NOT NULL,
	[value] [nchar](10) NOT NULL,
	[amount] [int] NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[createDate] [date] NOT NULL,
	[active] [bit] NOT NULL,
	[description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[saleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[sizeId] [nvarchar](10) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[statusId] [nvarchar](10) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranties]    Script Date: 06/02/2023 9:38:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranties](
	[warrantyId] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[orderDetailId] [int] NOT NULL,
	[frameNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Warrantys] PRIMARY KEY CLUSTERED 
(
	[warrantyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin@123', N'8mK2Nz01pJVkGRNK', N'Trương', N'Tấn', N'Trường', N'1', CAST(N'2000-06-15' AS Date), N'11c0e32e.jpg', N'0978215903', N'tpvinhlong1991@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin2401', N'admin@123', N'Võ', N'Lê Nhật', N'Linh', N'1', CAST(N'2001-01-01' AS Date), N'8014a4dc.jpg', N'0944694449', N'linhvlnpc01785@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin2502', N'admin@123', N'Huỳnh', N'Văn', N'Đạt', N'1', CAST(N'1990-02-08' AS Date), N'admin25024abaa76b.jpg', N'0815151572', N'quangdat0156@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin2603', N'admin@123', N'Trương', N'Tấn', N'Nộc', N'1', CAST(N'2004-09-25' AS Date), N'admin2603faea3c74.png', N'0946464646', N'locttpc01615@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin2704', N'admin@123', N'Hồ', N'Thanh', N'Phúc', N'1', CAST(N'2001-12-29' AS Date), N'hahi.jpg', N'0984356523', N'phuchtpc01818@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'admin3009', N'admin@123', N'Nguyễn', N'Đoàn Chí', N'Thức', N'1', CAST(N'2002-10-10' AS Date), N'admin@3009.jpg', N'0978215902', N'nthuc1306@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'aivocao2807', N'thuyai@123', N'Võ', N'Cao Thùy', N'Ái', N'2', CAST(N'2002-07-28' AS Date), N'default.jpg', N'0362347324', N'aivctpc01931@fpt.edu.vn
', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'baohan0209', N'baohan@0210', N'Lê', N'Bảo', N'Hân', N'2', CAST(N'2003-09-02' AS Date), N'default.jpg', N'0365364839', N'hanlbpc02021@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'demo1', N'11111111', N'Trần', N' Văn', N' Sơn', N'3', CAST(N'1990-01-01' AS Date), N'default.jpg', N'0987888675', N'dtndatn24@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'demotest', N'Admin@123', N'Nguyễn', N' Minh', N' Anh', N'1', CAST(N'1994-02-25' AS Date), N'demotestd5193d44.jpg', N'0366959251', N'thuesub001@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'diem2908', N'diem@2908', N'Nguyễn', N'Thị Bé', N'Diễm', N'2', CAST(N'2003-08-29' AS Date), N'default.jpg', N'0365364735', N'diemntbpc01940@fpt.edu.vn
', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'duong2908', N'duong@0829', N'Nguyễn', N'Thái', N'Dương', N'1', CAST(N'2003-08-29' AS Date), N'default.jpg', N'0365364835', N'duongntpc01453@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'duylinh0609', N'duylinh@0610', N'Nguyễn', N'Duy', N'Linh', N'2', CAST(N'2003-09-06' AS Date), N'default.jpg', N'0365364843', N'linhndpc02668@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'huynh', N'N8UJ3CAa', N'Huỳnh', N'Minh', N' Đạt', N'1', CAST(N'1990-01-01' AS Date), N'huynh4187f83e.png', N'0969494949', N'quangdat0156666@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'huynhdat', N'admin@123', N'Nguyễn', N' Trung', N' Trực', N'3', CAST(N'1990-01-01' AS Date), N'default.jpg', N'0979797979', N'dathvpc01684@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'kienthuc0409', N'kienthuc@0410', N'Nguyễn', N'Kiến', N'Thức', N'1', CAST(N'2003-09-04' AS Date), N'default.jpg', N'0365364841', N'thucnkpc02225@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'kieutrinh0109', N'kieutrinh@0110', N'Ngụy', N'Trần Kiều', N'Trinh', N'2', CAST(N'2003-09-01' AS Date), N'default.jpg', N'0365364838', N'trinhntkpc02120@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'lanvy0509', N'lanvy@0510', N'Nguyễn', N'Lan', N'Vy', N'2', CAST(N'2003-09-05' AS Date), N'default.jpg', N'0365364842', N'vynlpc02568@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'minhngoc', N'P12Ol9mlqlaLyguf', N'Huỳnh', N'Minh', N'Ngọc', N'2', CAST(N'2000-02-05' AS Date), N'4811f604.png', N'0909060606', N'minhngoc@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'mongvy0111', N'mongvy@0111', N'Ngô', N'Mộng', N'Vy', N'2', CAST(N'2002-11-01' AS Date), N'default.jpg', N'0367428374', N'vynmpc02119@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'ngoc2706', N'ngoc@2706', N'Nguyễn', N'Thị', N'Ngọc', N'2', CAST(N'2002-06-27' AS Date), N'default.jpg', N'0645383527', N'ngocntpc02700@fpt.edu.vn
', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'nguyenvana', N'admin@123', N'Nguyễn', N' Văn', N' A', N'1', CAST(N'1994-02-25' AS Date), N'nguyenvana45132140.jpg', N'0909090989', N'minhanhhg95@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'nhuy3010', N'nhuy@3010', N'Võ', N'Thị Như', N'Ý', N'2', CAST(N'2002-10-30' AS Date), N'default.jpg', N'0678372392', N'yvtnpc02114@fpt.edu.vn
', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'quangdat0156', N'Admin@123', N'Huỳnh', N'', N' Đạt', N'3', CAST(N'1990-01-01' AS Date), N'default.jpg', N'0945484511', N'quangdat01566@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'test123', N'12345678', N'Huỳnh', N'Quang', N' Đạt', N'3', CAST(N'2004-02-29' AS Date), N'test123bd98b2aa.jpg', N'0909090909', N'quangdat015666@gmail.com', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'thanhngan3108', N'thanhngan@3109', N'Huỳnh', N'Thanh', N'Ngân', N'2', CAST(N'2003-08-31' AS Date), N'default.jpg', N'0365364837', N'nganhtpc02026@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'thuyvy3008', N'thuyvy@3009', N'Vũ', N'Thị Thúy', N'Vy', N'2', CAST(N'2003-08-30' AS Date), N'default.jpg', N'0365364836', N'vyvttpc01852@fpt.edu.vn', 1)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'trang2605', N'trang@123', N'Nguyễn', N'Thị Thu', N'Trang', N'2', CAST(N'2000-05-26' AS Date), N'default.jpg', N'0643276432', N'trangnttpc02545@fpt.edu.vn', 0)
INSERT [dbo].[Accounts] ([username], [password], [lastName], [middleName], [firstName], [gender], [birthday], [avatar], [phone], [email], [active]) VALUES (N'vanmy0309', N'vanmy@0310', N'Nguyễn', N'Văn', N'My', N'2', CAST(N'2003-09-03' AS Date), N'default.jpg', N'0365364840', N'mynvpc02207@fpt.edu.vn', 1)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (1, N'admin3009', N'admin', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (3, N'admin3009', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (4, N'admin2401', N'admin', 0)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (9, N'admin2502', N'admin', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (10, N'admin2603', N'admin', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (11, N'admin2603', N'staff', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (12, N'admin2603', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (13, N'admin2401', N'staff', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (14, N'admin2502', N'staff', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (15, N'admin2704', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (19, N'admin@123', N'user', 0)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (20, N'admin2704', N'admin', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (21, N'mongvy0111', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (24, N'quangdat0156', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (25, N'nguyenvana', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (26, N'demotest', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (27, N'minhngoc', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (28, N'huynhdat', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (29, N'admin@123', N'admin', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (30, N'huynh', N'user', 1)
INSERT [dbo].[Authorities] ([authoritiesId], [username], [roleId], [active]) VALUES (31, N'demo1', N'user', 1)
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Blogs] ([blogId], [username], [title], [description], [contents], [images], [createDate], [views], [status]) VALUES (1, N'admin2502', N'MẪU XE ĐẠP ĐƯỢC NHIỀU “CUA-RƠ” YÊU THÍCH TẠI XEDAP.VN NGUYỄN VĂN LINH', N'Xu hướng gần đây rất ưa chuộng các mẫu xe đạp thể thao vừa nâng cao sức khỏe lại có thể vi vu khám phá từng ngõ ngách theo một cách khác biệt. Xe đạp đã và đang là một phương tiện di chuyển quen thuộc và không thể thiếu với nhiều người. Không chỉ phục vụ đi lại hàng ngày, những “chiếc ngựa sắt” cũng sẽ là bạn đồng hành để thưởng ngoạn, vi vu những cung đường đẹp tuyệt đẹp. Cùng xedap.vn khám phá 9 mẫu xe đạp xe hot nhất năm nay tại Shop xe đạp 255 – 257 Nguyễn Văn Linh, Thanh Khê, Đà Nẵng nhé.', N'<h3><strong>1. Xe Đạp Đường Phố Touring GIANT Escape R3 MS</strong></h3>

<p><a href="https://xedap.vn/shop/xe-dap-duong-pho-touring-giant-escape-r3-ms-banh-700c-2022/"><strong>Xe đạp đường phố Touring GIANT Escape R3 MS</strong></a>&nbsp;l&agrave; một mẫu xe đạp đường phố được sản xuất tại Nhật Bản d&agrave;nh cho người Nhật. Thiết kế của xe mang hơi hướng phong c&aacute;ch hiện đại nhưng đơn giản, đảm bảo được cả 2 ti&ecirc;u ch&iacute; đẹp m&agrave; chất lượng.</p>

<p><a href="https://xedap.vn/wp-content/uploads/2022/07/Escape-r3-ms-tr%E1%BA%AFng.jpg" rel="wpdevart_lightbox"><img alt="" class="img-fluid text-center" src="https://xedap.vn/wp-content/uploads/2022/07/Escape-r3-ms-tr%E1%BA%AFng.jpg" style="height:680px; width:1000px" /></a></p>

<p style="margin-left:360px; text-align:center">Xe đạp đường phố GIANT Escape R3 MS phong c&aacute;ch hiện đại nhưng đơn giản</p>

<p style="margin-left:560px"><a href="/DTNsBike/shop.html"><img alt="This image has an empty alt attribute; its file name is icon-mua-ngay.png" src="https://xedap.vn/wp-content/uploads/2021/03/icon-mua-ngay.png" style="height:48px; width:131px" /></a></p>

<p>&nbsp;</p>

<p>Tay l&aacute;i ngang kh&ocirc;ng sừng tr&aacute;nh vướng khi di chuyển trong phố v&agrave; chiều ngang tay l&aacute;i ph&ugrave; hợp với vai người ch&acirc;u &Aacute;. C&aacute;c bộ phận kh&aacute;c như y&ecirc;n, b&agrave;n đạp,&hellip; được đặt ch&iacute;nh x&aacute;c sao cho tư thế ngồi người đạp hợp l&yacute;, hạn chế tối đa việc tổn thương h&ocirc;ng v&agrave; khớp.</p>

<p>Escape R3 MS được trang bị bộ truyền động Microshift nổi tiếng Nhật Bản với 3 dĩa v&agrave; 8 l&iacute;p, mang đến khả năng chuyển đổi tốc độ dễ d&agrave;ng. Tay đề Microshift TS39 3&times;8 với 24 tốc độ gi&uacute;p bạn sang số nhẹ nh&agrave;ng v&agrave; ch&iacute;nh x&aacute;c hơn trong qu&aacute; tr&igrave;nh di chuyển.</p>

<p>Thắng xe được xem l&agrave; yếu tố quan trọng của d&ograve;ng xe đạp đường phố khi gi&uacute;p xe giảm tốc độ khi gặp những t&igrave;nh huống nguy hiểm bất ngờ tr&ecirc;n đường. Mẫu xe n&agrave;y sử dụng bộ thắng g&ocirc;m Tektro RX1 c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; lực b&oacute;p nhẹ, mang đến độ an to&agrave;n khi di chuyển. Ngo&agrave;i ra, với loại phanh v&agrave;nh n&agrave;y việc bảo dưỡng v&agrave; thay thế kh&aacute; dễ d&agrave;ng khi bộ phận phanh nằm ở vị tr&iacute; dễ th&aacute;o lắp.</p>

<p>Mẫu xe đạp đường phố của Giant được t&iacute;ch hợp cặp phuộc trước Chromoly steel fork nhẹ với khả năng hấp thụ rung động cao. H&igrave;nh dạng nhẹ nh&agrave;ng uốn cong về ph&iacute;a trước tr&aacute;nh lực đẩy l&ecirc;n khỏi mặt đường v&agrave; cho khả năng xử l&yacute; ổn định.</p>

<p>Khung sườn chất liệu nh&ocirc;m với thiết kế dạng ống kh&ocirc;ng chỉ đem lại cảm gi&aacute;c thanh mảnh cho xe m&agrave; c&ograve;n nhiều c&ocirc;ng dụng kh&aacute;c như chịu được va đập, tải trọng cao, nhẹ,&hellip; Xe phủ một lớp sơn tĩnh điện gi&uacute;p chống ăn m&ograve;n m&agrave; mang lại hiệu ứng m&agrave;u sắc bắt mắt, c&oacute; nhiều m&agrave;u sắc để lựa chọn như đen, đỏ, xanh đen, trắng, v&agrave;ng,&hellip;n&acirc;ng cao được phong c&aacute;ch sống v&agrave; c&aacute; t&iacute;nh của bạn.</p>

<p>&nbsp;</p>
', N'imgBlog1f09ef0d4.jpg', CAST(N'2022-12-05' AS Date), 21, 1)
INSERT [dbo].[Blogs] ([blogId], [username], [title], [description], [contents], [images], [createDate], [views], [status]) VALUES (2, N'admin2502', N'NHỮNG MẪU XE ĐẠP GIANT ĐANG BÁN CHẠY NHẤT TẠI HỒ CHÍ MINH', N'Thành phố Hồ Chí Minh được biết là một trong những điểm nóng với phong trào đạp xe. Xu hướng tậu xe đạp để dạo phố, rèn luyện sức khỏe đang phát triển vô cùng mạnh mẽ tại thành phố Hồ Chí Minh. Xe đạp được sử dụng bởi nhiều người ở mọi độ tuổi và giới tính. Trong đó, thương hiệu xe đạp Giant là một trong những thương hiệu nổi bật và được tìm kiếm nhiều nhất thời gian gần đây. Hôm nay Xedap.vn sẽ giới thiệu tới bạn những mẫu xe đạp thuộc thương hiệu Giant ', N'<h3><strong>1. Xe Đạp Đường Phố Touring GIANT Escape R3 MS</strong></h3>

<p><a href="https://xedap.vn/shop/xe-dap-duong-pho-touring-giant-escape-r3-ms-banh-700c-2022/"><strong>Xe đạp đường phố Touring GIANT Escape R3 MS</strong></a>&nbsp;l&agrave; một mẫu xe đạp đường phố được sản xuất tại Nhật Bản d&agrave;nh cho người Nhật. Thiết kế của xe mang hơi hướng phong c&aacute;ch hiện đại nhưng đơn giản, đảm bảo được cả 2 ti&ecirc;u ch&iacute; đẹp m&agrave; chất lượng.</p>

<p><a href="https://xedap.vn/wp-content/uploads/2022/07/Escape-r3-ms-tr%E1%BA%AFng.jpg" rel="wpdevart_lightbox"><img alt="" class="text-center" src="https://xedap.vn/wp-content/uploads/2022/07/Escape-r3-ms-tr%E1%BA%AFng.jpg" /></a></p>

<div class="text-center">
<p style="margin-left:480px; text-align:center">Xe đạp đường phố GIANT Escape R3 MS phong c&aacute;ch hiện đại nhưng đơn giản</p>
</div>

<p style="margin-left:720px">&nbsp;</p>

<p>Tay l&aacute;i ngang kh&ocirc;ng sừng tr&aacute;nh vướng khi di chuyển trong phố v&agrave; chiều ngang tay l&aacute;i ph&ugrave; hợp với vai người ch&acirc;u &Aacute;. C&aacute;c bộ phận kh&aacute;c như y&ecirc;n, b&agrave;n đạp,&hellip; được đặt ch&iacute;nh x&aacute;c sao cho tư thế ngồi người đạp hợp l&yacute;, hạn chế tối đa việc tổn thương h&ocirc;ng v&agrave; khớp.</p>

<p>Escape R3 MS được trang bị bộ truyền động Microshift nổi tiếng Nhật Bản với 3 dĩa v&agrave; 8 l&iacute;p, mang đến khả năng chuyển đổi tốc độ dễ d&agrave;ng. Tay đề Microshift TS39 3&times;8 với 24 tốc độ gi&uacute;p bạn sang số nhẹ nh&agrave;ng v&agrave; ch&iacute;nh x&aacute;c hơn trong qu&aacute; tr&igrave;nh di chuyển.</p>

<p>Thắng xe được xem l&agrave; yếu tố quan trọng của d&ograve;ng xe đạp đường phố khi gi&uacute;p xe giảm tốc độ khi gặp những t&igrave;nh huống nguy hiểm bất ngờ tr&ecirc;n đường. Mẫu xe n&agrave;y sử dụng bộ thắng g&ocirc;m Tektro RX1 c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; lực b&oacute;p nhẹ, mang đến độ an to&agrave;n khi di chuyển. Ngo&agrave;i ra, với loại phanh v&agrave;nh n&agrave;y việc bảo dưỡng v&agrave; thay thế kh&aacute; dễ d&agrave;ng khi bộ phận phanh nằm ở vị tr&iacute; dễ th&aacute;o lắp.</p>

<p>Mẫu xe đạp đường phố của Giant được t&iacute;ch hợp cặp phuộc trước Chromoly steel fork nhẹ với khả năng hấp thụ rung động cao. H&igrave;nh dạng nhẹ nh&agrave;ng uốn cong về ph&iacute;a trước tr&aacute;nh lực đẩy l&ecirc;n khỏi mặt đường v&agrave; cho khả năng xử l&yacute; ổn định.</p>

<p>Khung sườn chất liệu nh&ocirc;m với thiết kế dạng ống kh&ocirc;ng chỉ đem lại cảm gi&aacute;c thanh mảnh cho xe m&agrave; c&ograve;n nhiều c&ocirc;ng dụng kh&aacute;c như chịu được va đập, tải trọng cao, nhẹ,&hellip; Xe phủ một lớp sơn tĩnh điện gi&uacute;p chống ăn m&ograve;n m&agrave; mang lại hiệu ứng m&agrave;u sắc bắt mắt, c&oacute; nhiều m&agrave;u sắc để lựa chọn như đen, đỏ, xanh đen, trắng, v&agrave;ng,&hellip;n&acirc;ng cao được phong c&aacute;ch sống v&agrave; c&aacute; t&iacute;nh của bạn.</p>
', N'imgBlog225e5455a.jpg', CAST(N'2022-12-23' AS Date), 39, 1)
INSERT [dbo].[Blogs] ([blogId], [username], [title], [description], [contents], [images], [createDate], [views], [status]) VALUES (3, N'admin2502', N'NHỮNG MẪU XE ĐẠP GIANT ĐANG BÁN CHẠY NHẤT TẠI CẦN THƠ', N'Thành phố Hồ Chí Minh được biết là một trong những điểm nóng với phong trào đạp xe. Xu hướng tậu xe đạp để dạo phố, rèn luyện sức khỏe đang phát triển vô cùng mạnh mẽ tại thành phố Hồ Chí Minh. Xe đạp được sử dụng bởi nhiều người ở mọi độ tuổi và giới tính. Trong đó, thương hiệu xe đạp Giant là một trong những thương hiệu nổi bật và được tìm kiếm nhiều nhất thời gian gần đây. ', N'<h2>1. Xe Đạp Đường Phố Touring GIANT Escape 2 City Disc</h2>

<p>Mẫu&nbsp;<strong>xe đạp đường phố Giant Escape 2 City Disc</strong>&nbsp;l&agrave; c&aacute;i t&ecirc;n được t&igrave;m kiếm nhiều nhất trong năm nay. Với thiết kế thể thao, khung sườn nhỏ gọn v&agrave; khả năng vận h&agrave;nh mạnh mẽ, c&ugrave;ng nhiều c&ocirc;ng nghệ hiện đại ti&ecirc;n tiến được t&iacute;ch hợp tr&ecirc;n xe,&nbsp;<strong>Giant Escape 2 City Disc</strong>&nbsp;chắc chắn sẽ tiếp tục chiếm được t&igrave;nh cảm của nhiều người ti&ecirc;u d&ugrave;ng tại Việt Nam n&oacute;i chung v&agrave; khu vực Hồ Ch&iacute; Minh n&oacute;i ri&ecirc;ng. Với đặc điểm được thiết kế ph&ugrave; hợp cho những cung đường bằng phẳng v&agrave; địa h&igrave;nh th&agrave;nh phố,&nbsp;<strong>xe đạp Giant Escape 2 City Disc</strong>&nbsp;ho&agrave;n to&agrave;n chiếm s&oacute;ng tr&ecirc;n những cung đường tại th&agrave;nh phố Hồ Ch&iacute; Minh.</p>

<p><a href="/DTNsBike/shop.html" rel="wpdevart_lightbox"><img alt="" class="text-center" src="https://xedap.vn/wp-content/uploads/2022/07/1-1024x886-1.png" style="height:886px; width:1024px" /></a></p>

<p>Xe đạp đường phố Giant Escape 2 City Disc sở hữu cấu h&igrave;nh mạnh mẽ v&agrave; khả năng vận h&agrave;nh đỉnh cao</p>
', N'imgBlog3bd529eaf.jpg', CAST(N'2022-12-23' AS Date), 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (1, N'3T', N'imgBrand1d63646f9.png', N'3T offers high-end bikes and parts. The manufacturer places an emphasis and real world aerodynamics.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (2, N'6ku', N'imgBrand2ebd76b27.png', N'With a small selection of bikes, 6KU is one of the manufacturers who offers solutions for all people. The main attraction of the bikes is that they come at affordable prices.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (3, N'Alan Bike', N'imgBrand3291ea076.png', N'Founded in 1972, the company was named after Alberto and Anamaria, Falconi Ludovico’s kids. Today, the company sponsors multiple professional teams around the world.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (4, N'Alchemy Bikes', N'imgBrand4b28c388a.png', N'Based in Colorado, Alchemy bikes was founded in 2008. Titanium, steel and carbon fiber bikes for mountain, road and gravel.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (5, N'Alex Singer', N'imgBrand5460d1b39.png', N'French custom bike builder.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (6, N'All-City', N'imgBrand638fc25b6.jpg', N'All-City bikes aims to deliver competitive bikes for the urban cyclists. Their current bikes look apart as well.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (7, N'Allied Cycle Works', N'imgBrand74369ee66.png', N'Made in USA carbon road bikes. Founded in 2017.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (11, N'Basso', N'imgBrand1154fa8aa9.png', N'Basso offers a large selection of bikes recommended for the modern cyclist. The bikes now come with new tubing shapes as well.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (13, N'Baum', N'imgBrand13b687de42.png', N'From early mentorship in the 90’s to winning the best road bike UK award, Darren Baum has created a unique company for the skilled cyclist.')
INSERT [dbo].[Brands] ([brandId], [brand], [image], [description]) VALUES (14, N'Bear Claw Bicycle Co', N'imgBrand14eb04e7c7.png', N'Titanium and carbon road, mountain and fat bikes. Based in Michigan.')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
INSERT [dbo].[Carts] ([cartId], [username], [productDetailId], [amount]) VALUES (N'admin2603b4838b2', N'admin2603', 24, 4)
INSERT [dbo].[Carts] ([cartId], [username], [productDetailId], [amount]) VALUES (N'demo1d7332ea5', N'demo1', 14, 7)
INSERT [dbo].[Carts] ([cartId], [username], [productDetailId], [amount]) VALUES (N'test123d6116413', N'test123', 18, 20)
INSERT [dbo].[Carts] ([cartId], [username], [productDetailId], [amount]) VALUES (N'test123d79c0d68', N'test123', 23, 30)
INSERT [dbo].[Carts] ([cartId], [username], [productDetailId], [amount]) VALUES (N'test123d819e1ef', N'test123', 21, 1)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (1, 1, N'Xe Đạp Địa Hình', N'Xe đạp địa hình')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (2, 1, N'Xe Đạp Thể Thao', N'Xe đạp thể thao')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (3, 1, N'Xe Đạp Đua', N'Xe đạp đua')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (4, 1, N'Xe Đạp Gấp', N'Xe đạp gấp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (5, 1, N'Xe Đạp Đường Phố', N'Xe đạp đường phố')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (6, 1, N'Xe Đạp Trẻ Em', N'Xe đạp trẻ trang')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (7, 2, N'Yên Xe', N'Yên xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (8, 2, N'Thắng Xe', N'Thắng trước - sau xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (10, 2, N'Ghi Đông Xe', N'Ghi đông xe đạp (Cổ xe)')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (15, 2, N'Bánh Xe', N'Bánh xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (16, 2, N'Vỏ Xe', N'Vỏ xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (18, 2, N'Ruột Xe', N'Ruột xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (20, 2, N'Bàn Đạp', N'Bàn đạp xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (22, 2, N'Chén Cổ', N'Chén cổ xe đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (24, 2, N'Xích', N'Xích xe đạp (Sên xe)')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (25, 3, N'Mũ Bảo Hiểm', N'Mũ bảo hiểm')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (26, 3, N'Bình Nước', N'Bình nước')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (28, 3, N'Tay Nắm', N'Tay nắm ghi đông')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (29, 3, N'Giá Đỡ Phụ Kiện', N'Giá đỡ phụ kiện')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (30, 3, N'Ống Bơm', N'Phụ kiện bơm xe')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (31, 3, N'Móc Khóa', N'Móc Khóa Xe Đạp')
INSERT [dbo].[Categories] ([categoryId], [typeId], [name], [description]) VALUES (32, 1, N'Xe Thể Thao', N'Xe đạp thể thao')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'000000', N'Black')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'000080', N'NavyBlue')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00008B', N'DarkBlue')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'0000CD', N'Mediumblue')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'0000EE', N'Blue2')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'006400', N'Navy')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00688B', N'DeepSkyBlue4')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'008080', N'Dark Cyan')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00868B', N'Turquoise4')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00F5FF', N'Turquoise1')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00FA9A', N'MediumSpringGreen')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'00FF00', N'Green1')
INSERT [dbo].[Colors] ([colorId], [name]) VALUES (N'FFFF00', N'Yellow1')
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (1, N'admin2603', N'Huỳnh Văn Đạt', N'Test, 31117, 916, 92', N'0899675545')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (2, N'admin2502', N'Huỳnh Đạt', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'0946492294')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (3, N'nguyenvana', N'Nguyễn Văn A', N'Khóm 1, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'0909090910')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (4, N'demotest', N'Nguyễn Minh Anh', N'Số 113, Thị trấn Vĩnh Viễn, Huyện Long Mỹ, Tỉnh Hậu Giang', N'0366959251')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (5, N'huynhdat', N'Nguyễn Trung Trực', N'CF Ngọc Yến 6, Phường Tân An, Quận Ninh Kiều, Thành phố Cần Thơ', N'0979797979')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (6, N'huynh', N'Huỳnh Văn Đạt', N'Lý Thường Kiệt, Phường 9, Thành phố Cà Mau, Tỉnh Cà Mau', N'0969696969')
INSERT [dbo].[Contacts] ([contactId], [username], [fullName], [address], [phone]) VALUES (7, N'demo1', N'Nguyễn Văn A', N'số 48, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', N'0899675545')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailPhotos] ON 

INSERT [dbo].[DetailPhotos] ([detailPhotoId], [photoName], [productId]) VALUES (1, N'b7192797.png', 5)
INSERT [dbo].[DetailPhotos] ([detailPhotoId], [photoName], [productId]) VALUES (2, N'73fe11e3.jpg', 61)
INSERT [dbo].[DetailPhotos] ([detailPhotoId], [photoName], [productId]) VALUES (3, N'43b029a4.jpg', 61)
SET IDENTITY_INSERT [dbo].[DetailPhotos] OFF
GO
INSERT [dbo].[Discounts] ([discountId], [value], [description]) VALUES (N'1', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([favoriteId], [username], [productId]) VALUES (5, N'demo1', 8)
INSERT [dbo].[Favorites] ([favoriteId], [username], [productId]) VALUES (3, N'huynh', 11)
INSERT [dbo].[Favorites] ([favoriteId], [username], [productId]) VALUES (1, N'quangdat0156', 13)
INSERT [dbo].[Favorites] ([favoriteId], [username], [productId]) VALUES (6, N'demo1', 16)
INSERT [dbo].[Favorites] ([favoriteId], [username], [productId]) VALUES (2, N'nguyenvana', 58)
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (1, 7, 6, N'M', 1200000, 0, 2, 0, 10)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (2, 9, 6, N'L', 1300000, 0, 1, 0, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (3, 11, 7, N'S', 1000000, 0, 3, 0, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (4, 12, 7, N'S', 1990000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (5, 13, 13, N'L', 1990000, 0, 1, 10, 2)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (6, 14, 15, N'L', 1990000, 0, 2, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (7, 15, 15, N'L', 1990000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (8, 16, 15, N'L', 1990000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (9, 16, 7, N'S', 1990000, 0, 5, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (10, 17, 15, N'L', 1990000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (11, 18, 23, N'L', 6831000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (12, 19, 107, N'L', 1432000, 0, 2, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (13, 20, 64, N'L', 8350000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (14, 21, 64, N'L', 8350000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (15, 22, 13, N'L', 1990000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (16, 23, 48, N'L', 12590000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (17, 24, 48, N'L', 12590000, 0, 10, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (18, 24, 45, N'M', 12590000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (19, 25, 57, N'L', 12790000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (20, 26, 15, N'L', 1990000, 0, 2, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (21, 27, 48, N'L', 12590000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (22, 28, 48, N'L', 12590000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (23, 29, 129, N'M', 450000, 0, 1, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (24, 30, 13, N'L', 1990000, 0, 2, 10, 30)
INSERT [dbo].[OrderDetails] ([orderDetailId], [orderId], [productDetailId], [size], [price], [discount], [amount], [vat], [warrantyPeriod]) VALUES (25, 31, 42, N'L', 6712000, 0, 10, 10, 30)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (7, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Bac Lieu', N'SALE', 0, CAST(N'2022-12-05' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (9, N'admin2502', N'Huynh Dat', N'0815151572', N'Ca Mau', N'SALE', 0, CAST(N'2022-12-05' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (11, N'admin2502', N'Huynh Dang', N'0366959251', N'Soc Trang', N'SALE', 0, CAST(N'2022-12-04' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (12, N'admin2603', N'Huỳnh Văn Đạt', N'0899675545', N'Test, 31117, 916, 92', NULL, 0, CAST(N'2022-12-06' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (13, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-10' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (14, N'nguyenvana', N'Nguyễn Văn A', N'0909090910', N'Khóm 1, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-16' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (15, N'nguyenvana', N'Nguyễn Văn A', N'0909090910', N'Khóm 1, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-16' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (16, N'nguyenvana', N'Nguyễn Văn A', N'0909090910', N'Khóm 1, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-16' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (17, N'nguyenvana', N'Nguyễn Văn A', N'0909090910', N'Khóm 1, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-16' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (18, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-20' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (19, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', NULL, 0, CAST(N'2022-12-22' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (20, N'demotest', N'Nguyễn Minh Anh', N'0366959251', N'Số 113, Thị trấn Vĩnh Viễn, Huyện Long Mỹ, Tỉnh Hậu Giang', NULL, 0, CAST(N'2022-12-22' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (21, N'demotest', N'Nguyễn Minh Anh', N'0366959251', N'Số 113, Thị trấn Vĩnh Viễn, Huyện Long Mỹ, Tỉnh Hậu Giang', NULL, 0, CAST(N'2022-12-22' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (22, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'ADSD', 12, CAST(N'2022-12-22' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (23, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'SALES', 10, CAST(N'2022-12-22' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (24, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'SALEs', 10, CAST(N'2022-12-22' AS Date), N'dagi')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (25, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'SALES', 10, CAST(N'2022-12-22' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (26, N'huynhdat', N'Nguyễn Trung Trực', N'0979797979', N'CF Ngọc Yến 6, Phường Tân An, Quận Ninh Kiều, Thành phố Cần Thơ', N'SALES', 10, CAST(N'2022-12-22' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (27, N'huynh', N'Huỳnh Văn Đạt', N'0969696969', N'Lý Thường Kiệt, Phường 9, Thành phố Cà Mau, Tỉnh Cà Mau', NULL, 0, CAST(N'2022-12-23' AS Date), N'dh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (28, N'huynh', N'Huỳnh Văn Đạt', N'0969696969', N'Lý Thường Kiệt, Phường 9, Thành phố Cà Mau, Tỉnh Cà Mau', N'ADSD', 12, CAST(N'2022-12-23' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (29, N'huynhdat', N'Nguyễn Trung Trực', N'0979797979', N'CF Ngọc Yến 6, Phường Tân An, Quận Ninh Kiều, Thành phố Cần Thơ', NULL, 0, CAST(N'2022-12-23' AS Date), N'cxn')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (30, N'demo1', N'Nguyễn Văn A', N'0899675545', N'số 48, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', NULL, 0, CAST(N'2022-12-24' AS Date), N'dnh')
INSERT [dbo].[Orders] ([orderId], [username], [fullName], [phone], [address], [saleId], [saleValue], [purchaseDate], [statusId]) VALUES (31, N'admin2502', N'Huỳnh Đạt', N'0946492294', N'Khóm 6, Phường 2, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'HAHA', 10, CAST(N'2023-01-13' AS Date), N'dnh')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Origins] ON 

INSERT [dbo].[Origins] ([originId], [madeIn], [description]) VALUES (1, N'China', N'Sản xuất tại Trung Quốc')
INSERT [dbo].[Origins] ([originId], [madeIn], [description]) VALUES (2, N'Việt Nam', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Origins] ([originId], [madeIn], [description]) VALUES (3, N'Taiwan', N'Sản xuất tại Đài Loan')
INSERT [dbo].[Origins] ([originId], [madeIn], [description]) VALUES (4, N'Korea', N'Sản xuấ tại Hàn Quốc')
INSERT [dbo].[Origins] ([originId], [madeIn], [description]) VALUES (5, N'Japan', N'Sản xuất tại Nhật Bản')
SET IDENTITY_INSERT [dbo].[Origins] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (6, 5, N'S', N'000000', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (7, 5, N'S', N'000080', 5)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (8, 5, N'S', N'00008B', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (10, 5, N'M', N'000000', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (11, 5, N'M', N'000080', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (12, 5, N'M', N'00008B', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (13, 5, N'L', N'000000', 6)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (14, 5, N'L', N'000080', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (15, 5, N'L', N'00008B', 5)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (16, 8, N'S', N'0000CD', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (17, 8, N'S', N'0000EE', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (18, 8, N'S', N'006400', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (19, 8, N'M', N'0000CD', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (20, 8, N'M', N'0000EE', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (21, 8, N'M', N'006400', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (22, 8, N'L', N'0000CD', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (23, 8, N'L', N'0000EE', 29)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (24, 8, N'L', N'006400', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (25, 9, N'S', N'00688B', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (26, 9, N'S', N'008080', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (27, 9, N'S', N'00868B', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (28, 9, N'M', N'00688B', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (29, 9, N'M', N'008080', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (31, 9, N'M', N'00868B', 20)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (32, 9, N'L', N'00688B', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (33, 9, N'L', N'008080', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (34, 9, N'L', N'00868B', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (35, 10, N'S', N'00F5FF', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (36, 10, N'S', N'00FA9A', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (38, 10, N'M', N'00F5FF', 60)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (39, 10, N'M', N'00FA9A', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (40, 10, N'M', N'00FF00', 30)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (42, 10, N'L', N'00F5FF', 70)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (43, 11, N'S', N'000000', 100)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (44, 11, N'M', N'000000', 120)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (45, 11, N'M', N'000080', 59)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (46, 11, N'L', N'000000', 60)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (47, 11, N'L', N'000080', 80)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (48, 11, N'L', N'00008B', 78)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (50, 12, N'S', N'000000', 70)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (51, 12, N'S', N'000080', 65)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (52, 12, N'S', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (53, 12, N'M', N'000000', 60)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (54, 12, N'M', N'000080', 69)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (55, 12, N'L', N'000000', 69)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (56, 12, N'L', N'000080', 70)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (57, 12, N'L', N'00008B', 100)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (58, 13, N'S', N'000000', 90)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (59, 13, N'S', N'00008B', 86)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (60, 13, N'M', N'000000', 90)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (61, 13, N'M', N'000080', 96)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (62, 13, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (63, 13, N'L', N'000000', 66)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (64, 13, N'L', N'000080', 32)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (65, 13, N'L', N'00008B', 88)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (66, 14, N'S', N'000000', 35)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (67, 14, N'S', N'000080', 55)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (68, 14, N'S', N'00008B', 99)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (69, 14, N'M', N'000000', 199)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (71, 14, N'M', N'000080', 99)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (72, 14, N'L', N'000000', 188)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (73, 14, N'L', N'000080', 199)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (74, 14, N'L', N'00008B', 123)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (75, 15, N'S', N'000000', 234)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (76, 15, N'M', N'000000', 125)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (77, 15, N'M', N'000080', 251)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (78, 15, N'L', N'000000', 159)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (80, 15, N'L', N'000080', 357)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (81, 15, N'L', N'00008B', 258)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (82, 16, N'S', N'000000', 147)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (83, 16, N'S', N'000080', 369)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (84, 16, N'S', N'00008B', 123)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (85, 16, N'M', N'000000', 456)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (86, 16, N'M', N'000080', 789)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (87, 16, N'M', N'00008B', 135)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (88, 16, N'L', N'000000', 351)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (89, 16, N'L', N'000080', 246)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (90, 16, N'L', N'00008B', 999)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (92, 17, N'L', N'00008B', 100)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (94, 18, N'L', N'00008B', 200)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (95, 20, N'L', N'00008B', 120)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (96, 21, N'L', N'00008B', 100)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (97, 22, N'L', N'00008B', 133)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (98, 23, N'L', N'00008B', 122)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (99, 24, N'L', N'00008B', 111)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (100, 25, N'L', N'00008B', 99)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (101, 26, N'L', N'00008B', 88)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (102, 27, N'M', N'00008B', 77)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (103, 28, N'M', N'00008B', 288)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (104, 29, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (105, 31, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (106, 33, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (107, 34, N'M', N'00008B', 28)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (108, 35, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (109, 36, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (110, 37, N'L', N'00008B', 69)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (111, 39, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (112, 41, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (113, 42, N'L', N'00008B', 50)
GO
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (115, 43, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (116, 44, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (117, 45, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (118, 46, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (119, 47, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (120, 48, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (121, 49, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (122, 50, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (123, 51, N'L', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (124, 52, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (125, 53, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (127, 54, N'M', N'00008B', 51)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (128, 55, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (129, 56, N'M', N'00008B', 49)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (130, 57, N'M', N'00008B', 50)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (131, 58, N'M', N'00008B', 45)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (132, 59, N'M', N'00008B', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (133, 60, N'S', N'FFFF00', 102)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (134, 60, N'M', N'FFFF00', 369)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (135, 60, N'L', N'FFFF00', 258)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (136, 61, N'M', N'FFFF00', 10)
INSERT [dbo].[ProductDetails] ([productDetailId], [productId], [sizeId], [colorId], [amount]) VALUES (137, 61, N'M', N'00FA9A', 200)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductReviews] ON 

INSERT [dbo].[ProductReviews] ([productRevewId], [username], [productId], [comment], [date], [stars]) VALUES (1, N'admin2502', 5, N'Sản phẩm chất lượng !!!', CAST(N'2022-12-22' AS Date), 5)
INSERT [dbo].[ProductReviews] ([productRevewId], [username], [productId], [comment], [date], [stars]) VALUES (2, N'huynhdat', 5, N'Hàng đẹp, đúng mẫu.', CAST(N'2022-12-22' AS Date), 5)
INSERT [dbo].[ProductReviews] ([productRevewId], [username], [productId], [comment], [date], [stars]) VALUES (3, N'huynh', 11, N'Sản phẩm tốt hơn kỳ vọng :))', CAST(N'2022-12-23' AS Date), 5)
INSERT [dbo].[ProductReviews] ([productRevewId], [username], [productId], [comment], [date], [stars]) VALUES (4, N'demo1', 5, N'Sản phẩm tốt', CAST(N'2022-12-24' AS Date), 4)
INSERT [dbo].[ProductReviews] ([productRevewId], [username], [productId], [comment], [date], [stars]) VALUES (5, N'admin2502', 10, N'Ngon!', CAST(N'2023-01-13' AS Date), 5)
SET IDENTITY_INSERT [dbo].[ProductReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (5, N'Xe Đạp Trẻ Em Youth VINBIKE Prince 16 – Bánh 16 Inches', N'05.jpg', 1990000, 10, 30, N'Thời trang, bền bỉ', 1, 6, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (8, N'Xe Đạp Đường Phố Touring TRINX Free 2.0 – Phanh Đĩa, Bánh 700C', N'08.jpg', 6831000, 10, 30, N'Thời trang, bền bỉ', 1, 5, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (9, N'Xe Đạp Đường Phố Touring GIANT Escape 3 – Bánh 700C – 2021', N'09.jpg', 1900000, 10, 30, N'Thời trang, bền bỉ', 1, 5, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (10, N'Xe Đạp Địa Hình MTB GIANT ATX 620 – Phanh Đĩa, Bánh 26 Inches – 2022', N'10.jpg', 6712000, 10, 30, N'Thời trang, bền bỉ', 1, 1, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (11, N'Xe Đạp Địa Hình MTB GIANT Roam 3 Disc – Phanh Đĩa, Bánh 700C – 2022', N'11.jpg', 12590000, 10, 30, N'Thời trang, bền bỉ', 1, 1, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (12, N'Xe Đạp Đường Phố Touring GIANT Escape 2 Disc – Phanh Đĩa, Bánh 700C – 2022', N'12.jpg', 12790000, 10, 30, N'Thời trang, bền bỉ', 1, 5, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (13, N'Xe Đạp Gấp Folding GIANT FD-806 – Bánh 20 Inches – 2022', N'13.jpg', 8350000, 10, 30, N'Thời trang, bền bỉ', 1, 4, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (14, N'Xe Đạp Trẻ Em Youth ROYALBABY Jenny Princess – Bánh 12 Inches', N'14.jpg', 2190000, 10, 30, N'Thời trang, bền bỉ', 1, 6, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (15, N'Xe Đạp Đua Đường Trường Road GIANT Propel Advanced 1 Disc – Phanh đĩa, Bánh 700C – 2022', N'15.jpg', 100595500, 10, 30, N'Thời trang, bền bỉ', 1, 3, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (16, N'Xe Đạp Đua Đường Trường Road GIANT Trinity Advanced Pro 1 – Bánh 700C – 2020', N'16.jpg', 127127000, 10, 30, N'Thời trang, bền bỉ', 1, 3, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (17, N'Nón Bảo Hiểm Xe Đạp GIANT Knight Helmet', N'17.jpg', 1050000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (18, N'Nón Bảo Hiểm Xe Đạp GIANT Touring 2.0', N'18.jpg', 590000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (20, N'Nón Bảo Hiểm Xe Đạp M/L (57-61cm) VINBIKE VB16 Bicycle Helmet', N'20.jpg', 120500, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (21, N'Vỏ Xe Đạp 29×2.10 MAXXIS MTB Pace Bicycle Tire', N'21.jpg', 490000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (22, N'Ruột Xe Đạp GIANT 700X20-25 PV 60mm Threaded Innertube And Valve', N'22.jpg', 149000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (23, N'Đệm Yên Sau Xe Đạp LATTE', N'23.jpg', 179000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 7, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (24, N'Pedal Xe Đạp Nhôm 105x59mm VINBIKE VB10 Bicycle Pedal', N'24.jpg', 424000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 20, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (25, N'Ghi Đông GIANT Contact SLR D-Fuse Handlebar', N'25.jpg', 6031000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 10, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (26, N'Chén Cổ Xe Đạp GIANT Overdrive Road Integrated Headset', N'26.jpg', 749000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 22, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (27, N'Bánh Trước Xe Đạp CADEX 65 Rim Brake Tubeless Front Wheelset', N'27.jpg', 22431000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 15, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (28, N'Bánh Sau Xe Đạp CADEX 65 Disc Brake Tubular Rear Wheel', N'28.jpg', 23000000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 15, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (29, N'Nón Bảo Hiểm Xe Đạp GIANT Helmet Road Compel Asian Adult
', N'29.jpg', 687200, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (31, N'
Nón Bảo Hiểm Xe Đạp ROYAL JC03 Helmet', N'30.jpg', 299000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (33, N'
Nón Bảo Hiểm Xe Đạp M/L (57-61cm) VINBIKE VB16 Bicycle Helmet', N'31.jpg', 599000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (34, N'Nón Bảo Hiểm Xe Đạp GIANT Rev Helmet Road', N'32.jpg', 1432000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (35, N'Nón Bảo Hiểm Xe Đạp GIANT Road Compel Adult Helmet', N'33.jpg', 699000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (36, N'Nón Bảo Hiểm Xe Đạp Trẻ Em 5 – 6 Tuổi (M) PROTEC Smile – Kitty', N'34.jpg', 359000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (37, N'Nón Bảo Hiểm Xe Đạp Trẻ Em 3 – 4 Tuổi (S) PROTEC Smile – Elsa', N'35.jpg', 359000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (39, N'Nón Bảo Hiểm Xe Đạp GIANT Helmet Compel Mips', N'36.jpg', 1032000, 10, 30, N'Thời trang, bền bỉ', 1, 25, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (41, N'Ruột Xe Đạp 700×32/47C 40mm Van Lớn (Schrader) CONTINENTAL Bicycle Tube Tour All 28″ A40 RE', N'37.jpg', 139000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (42, N'Ruột Xe Đạp 27.5×1.75/2.4 42mm Van Nhỏ (Presta) CONTINENTAL Bicycle Tube MTB 27.5″ S42 RE', N'38.jpg', 139000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (43, N'Ruột Xe Đạp 27.5×1.75/2.4 48mm Van Lớn (Schrader) MAXXIS Bicycle Tube Welter Weight
', N'39.jpg', 119000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (44, N'Ruột Xe Đạp 700Cx33/50C 48mm Van Nhỏ (Presta) MAXXIS Bicycle Tube Welter Weight
', N'40.jpg', 119000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (45, N'Ruột Xe Đạp 700×32/47C 42mm Van Nhỏ (Presta) CONTINENTAL Bicycle Tube Tour All 28″ S42 RE
', N'41.jpg', 139000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (46, N'Ruột Xe Đạp 700×20/25C 60mm Van Nhỏ (Presta) CONTINENTAL Bicycle Tube Race 28″ S60 RE
', N'42.jpg', 169000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (47, N'Ruột Xe Đạp 700×23/32C 80mm Van Nhỏ (Presta) MAXXIS Bicycle Tube Welter Weight
', N'43.jpg', 149000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (48, N'Ruột Xe Đạp 29×1.75/2.4 48mm Van Lớn (Schrader) MAXXIS Bicycle Tube Welter Weight
', N'44.jpg', 129000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (49, N'Ruột Xe Đạp 700×23/32C 60mm Van Nhỏ (Presta) MAXXIS Bicycle Tube Welter Weight
', N'45.jpg', 129000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 18, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (50, N'Vỏ Xe Đạp 700x40c MAXXIS Trekking Overdrive Excel Bicycle Tire
', N'46.jpg', 415000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (51, N'Vỏ Xe Đạp 700x25c MAXXIS Road Pursuer Bicycle Tire
', N'47.jpg', 365000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (52, N'Vỏ Xe Đạp 700x40c MAXXIS Trekking Overdrive Excel Bicycle Tire
', N'48.jpg', 415000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (53, N'Vỏ Xe Đạp 700x25c MAXXIS Road Pursuer Bicycle Tire
', N'49.jpg', 365000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (54, N'Vỏ Xe Đạp 27.5×2.25 MAXXIS MTB Rekon Bicycle Tire
', N'50.jpg', 490000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (55, N'Vỏ Xe Đạp 27.5×2.10 MAXXIS MTB Pace Bicycle Tire
', N'51.jpg', 475000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (56, N'Vỏ Xe Đạp 700x35c (Có Viền Phản Quang) MAXXIS Trekking Overdrive Excel Bicycle Tire
', N'52.jpg', 450000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (57, N'Vỏ Xe Đạp Không Ruột GIANT Crosscut AT ERT 35C Tubeless Bicycle Tire
', N'53.jpg', 486000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (58, N'Vỏ Xe Đạp CADEX Race 25 (700x25C) Tubeless
', N'54.jpg', 1870000, 10, 30, N'Bền bỉ, chất lượng tốt', 1, 16, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (59, N'Móc Doreamon', N'c08fa83d.jpg', 20000, 0, 0, N'Móc khóa xinh!', 0, 31, N'1', 1, 2)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (60, N'Xe Đạp Thể Thao', N'9b4a762c.jpg', 9999999, 10, 30, N'Xe đạp thể thao', 0, 2, N'1', 1, 1)
INSERT [dbo].[Products] ([productId], [name], [image], [price], [vat], [warrantyPeriod], [description], [avaliable], [categoryId], [discountId], [brandId], [originId]) VALUES (61, N'Xe Dap A', N'9eb2ec79.jpg', 1000000, 10, 30, N'mo ta san pham ', 1, 2, N'1', 4, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([roleId], [description]) VALUES (N'admin', N'Quản trị viên')
INSERT [dbo].[Roles] ([roleId], [description]) VALUES (N'staff', N'Nhân viên')
INSERT [dbo].[Roles] ([roleId], [description]) VALUES (N'user', N'Người dùng')
GO
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'ADSD', N'12        ', 8, CAST(N'2022-12-01' AS Date), CAST(N'2022-12-31' AS Date), CAST(N'2022-12-22' AS Date), 1, N'')
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'DATN', N'10        ', 10, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-25' AS Date), CAST(N'2022-12-23' AS Date), 1, N'Mã giãm giá 10% tháng 12')
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'HAHA', N'10        ', 9, CAST(N'2023-01-12' AS Date), CAST(N'2023-01-14' AS Date), CAST(N'2023-01-13' AS Date), 1, N'Mã giãm 10%')
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'SALE', N'10        ', 10, CAST(N'2022-12-01' AS Date), CAST(N'2022-12-02' AS Date), CAST(N'2022-12-01' AS Date), 1, N'Ma giam 10%')
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'SALES', N'10        ', 7, CAST(N'2022-12-22' AS Date), CAST(N'2022-12-25' AS Date), CAST(N'2022-12-22' AS Date), 1, N'Mã giãm 10% cho tháng 12')
INSERT [dbo].[Sales] ([saleId], [value], [amount], [startDate], [endDate], [createDate], [active], [description]) VALUES (N'V011', N'1         ', 1, CAST(N'2022-12-01' AS Date), CAST(N'2022-12-23' AS Date), CAST(N'2022-12-23' AS Date), 1, N'')
GO
INSERT [dbo].[Sizes] ([sizeId], [description]) VALUES (N'L', N'Size Lớn')
INSERT [dbo].[Sizes] ([sizeId], [description]) VALUES (N'M', N'Size Vừa')
INSERT [dbo].[Sizes] ([sizeId], [description]) VALUES (N'S', N'Size Nhỏ')
GO
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'clh', N'Chờ lấy hàng', N'Đơn hàng đã được chuyển thông tin chờ giao cho đơn vị vận chuyển')
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'cxn', N'Chờ xác nhận', N'Trạng thái đơn hàng đã được Shop tiếp nhận chờ nhân viên xác nhận đơn (xác nhận có hàng) để giao.')
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'dagi', N'Đã giao', N'Đơn hàng đã được giao thành công tới người mua.')
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'dangi', N'Đang giao', N'Đơn hàng đang được giao tới người mua.')
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'dh', N'Đã hủy', N'Đơn hàng đã được hủy thành công.')
INSERT [dbo].[Status] ([statusId], [name], [description]) VALUES (N'dnh', N'Đã nhận hàng ', N'Đơn hàng được xác nhận bởi người dùng')
GO
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([typeId], [name], [description]) VALUES (1, N'Xe Đạp', N'Xe Đạp')
INSERT [dbo].[Types] ([typeId], [name], [description]) VALUES (2, N'Phụ Tùng', N'Phụ tùng xe đạp')
INSERT [dbo].[Types] ([typeId], [name], [description]) VALUES (3, N'Phụ Kiện', N'Phụ kiện xe đạp')
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (1, N'admin2502', 1, N'123456')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (2, N'admin2502', 2, N'BH0007')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (3, N'admin2502', 3, N'BH0006')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (4, N'admin2502', 4, N'BH0005')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (5, N'admin2502', 5, N'1234567')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (11, N'admin2502', 11, N'BH0004')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (12, N'admin2502', 12, N'BH0003')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (14, N'admin2502', 14, N'123458')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (15, N'admin2502', 15, N'BH0002')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (16, N'admin2502', 16, N'252101')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (17, N'admin2502', 17, N'025222')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (18, N'admin2502', 18, N'025223')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (20, N'admin2502', 20, N'Dat123')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (22, N'admin2502', 22, N'BH0001')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (24, N'admin2502', 24, N'BH0012')
INSERT [dbo].[Warranties] ([warrantyId], [username], [orderDetailId], [frameNumber]) VALUES (25, N'admin2502', 25, N'155486')
GO
/****** Object:  Index [UK_AuthenticPhotos]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[AuthenticPhotos] ADD  CONSTRAINT [UK_AuthenticPhotos] UNIQUE NONCLUSTERED 
(
	[AuthenticPhotoId] ASC,
	[productReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Authorities]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UK_Authorities] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Colors]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[Colors] ADD  CONSTRAINT [UK_Colors] UNIQUE NONCLUSTERED 
(
	[colorId] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Favorites]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[Favorites] ADD  CONSTRAINT [UK_Favorites] UNIQUE NONCLUSTERED 
(
	[productId] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ProductDetails]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [UK_ProductDetails] UNIQUE NONCLUSTERED 
(
	[productId] ASC,
	[colorId] ASC,
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ProductReviews]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[ProductReviews] ADD  CONSTRAINT [UK_ProductReviews] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Warrantys]    Script Date: 06/02/2023 9:38:00 CH ******/
ALTER TABLE [dbo].[Warranties] ADD  CONSTRAINT [UK_Warrantys] UNIQUE NONCLUSTERED 
(
	[frameNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuthenticPhotos]  WITH CHECK ADD  CONSTRAINT [FK_AuthenticPhotos_ProductReviews] FOREIGN KEY([productReviewId])
REFERENCES [dbo].[ProductReviews] ([productRevewId])
GO
ALTER TABLE [dbo].[AuthenticPhotos] CHECK CONSTRAINT [FK_AuthenticPhotos_ProductReviews]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([roleId])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Accounts]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Accounts]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_ProductDetails] FOREIGN KEY([productDetailId])
REFERENCES [dbo].[ProductDetails] ([productDetailId])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_ProductDetails]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categorys_Types] FOREIGN KEY([typeId])
REFERENCES [dbo].[Types] ([typeId])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categorys_Types]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Accounts]
GO
ALTER TABLE [dbo].[DetailPhotos]  WITH CHECK ADD  CONSTRAINT [FK_DetailPhotos_Products] FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
GO
ALTER TABLE [dbo].[DetailPhotos] CHECK CONSTRAINT [FK_DetailPhotos_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([orderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductDetails] FOREIGN KEY([productDetailId])
REFERENCES [dbo].[ProductDetails] ([productDetailId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductDetails]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Sales] FOREIGN KEY([saleId])
REFERENCES [dbo].[Sales] ([saleId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Sales]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([statusId])
REFERENCES [dbo].[Status] ([statusId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Colors] FOREIGN KEY([colorId])
REFERENCES [dbo].[Colors] ([colorId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Colors]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Products] FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Products]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Sizes] FOREIGN KEY([sizeId])
REFERENCES [dbo].[Sizes] ([sizeId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Sizes]
GO
ALTER TABLE [dbo].[ProductPriceHistories]  WITH CHECK ADD  CONSTRAINT [FK_ProductPriceHistorys_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[ProductPriceHistories] CHECK CONSTRAINT [FK_ProductPriceHistorys_Accounts]
GO
ALTER TABLE [dbo].[ProductPriceHistories]  WITH CHECK ADD  CONSTRAINT [FK_ProductPriceHistorys_Products] FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
GO
ALTER TABLE [dbo].[ProductPriceHistories] CHECK CONSTRAINT [FK_ProductPriceHistorys_Products]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_Accounts]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK_ProductReviews_Products1] FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([productId])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK_ProductReviews_Products1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([brandId])
REFERENCES [dbo].[Brands] ([brandId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categorys1] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([categoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categorys1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Discounts] FOREIGN KEY([discountId])
REFERENCES [dbo].[Discounts] ([discountId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Discounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Origins] FOREIGN KEY([originId])
REFERENCES [dbo].[Origins] ([originId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Origins]
GO
ALTER TABLE [dbo].[Warranties]  WITH CHECK ADD  CONSTRAINT [FK_Warrantys_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Warranties] CHECK CONSTRAINT [FK_Warrantys_Accounts]
GO
ALTER TABLE [dbo].[Warranties]  WITH CHECK ADD  CONSTRAINT [FK_Warrantys_OrderDetails] FOREIGN KEY([orderDetailId])
REFERENCES [dbo].[OrderDetails] ([orderDetailId])
GO
ALTER TABLE [dbo].[Warranties] CHECK CONSTRAINT [FK_Warrantys_OrderDetails]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'lastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đệm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'middleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'firstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện (Công thức tên ảnh: [Tên đăng nhập] + [Ngày thêm ảnh])' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái của tài khoản (Còn hoạt động/Ngừng hoạt động)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chứng thực sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AuthenticPhotos', @level2type=N'COLUMN',@level2name=N'AuthenticPhotoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên ảnh hoặc video' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AuthenticPhotos', @level2type=N'COLUMN',@level2name=N'photoName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đánh giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AuthenticPhotos', @level2type=N'COLUMN',@level2name=N'productReviewId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phân quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Authorities', @level2type=N'COLUMN',@level2name=N'authoritiesId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Authorities', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vai trò' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Authorities', @level2type=N'COLUMN',@level2name=N'roleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'blogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Người đăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề bài' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'images'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Blogs', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thương hiệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brands', @level2type=N'COLUMN',@level2name=N'brandId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thương hiệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brands', @level2type=N'COLUMN',@level2name=N'brand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh thương hiệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brands', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brands', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giỏ hàng ([username] + 10 số ngẫu nhiên)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Carts', @level2type=N'COLUMN',@level2name=N'cartId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã danh mục sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại danh mục' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã màu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'colorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên màu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Colors', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã liên hệ người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contacts', @level2type=N'COLUMN',@level2name=N'contactId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tài khoản đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contacts', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ tên người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contacts', @level2type=N'COLUMN',@level2name=N'fullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contacts', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contacts', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên file ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetailPhotos', @level2type=N'COLUMN',@level2name=N'photoName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetailPhotos', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giảm giá cho sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Discounts', @level2type=N'COLUMN',@level2name=N'discountId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số phần trăm được giảm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Discounts', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Discounts', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã yêu thích' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Favorites', @level2type=N'COLUMN',@level2name=N'favoriteId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Favorites', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Favorites', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'orderDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'orderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'productDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần trăm giảm giá cho sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thuế GTGT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'vat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số ngày bảo hành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'warrantyPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'orderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ & tên người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'fullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ người nhận hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giảm giá (Khóa ngoại từ bảng Sales)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'saleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần trăm giảm giá trên toàn hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'saleValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'purchaseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái đơn hàng (Khóa ngoại từ bảng Status)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'statusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã xuất xứ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Origins', @level2type=N'COLUMN',@level2name=N'originId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nơi xuất xứ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Origins', @level2type=N'COLUMN',@level2name=N'madeIn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Origins', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductDetails', @level2type=N'COLUMN',@level2name=N'productDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductDetails', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã size (Khóa ngoại từ bảng Sizes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductDetails', @level2type=N'COLUMN',@level2name=N'sizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã màu (Khóa ngoại từ bảng Colors)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductDetails', @level2type=N'COLUMN',@level2name=N'colorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductDetails', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã lịch sử thay đổi giá sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'productPriceHistoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm (Khóa ngoại từ bảng Products)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá cũ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'priceOld'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá mới thay đổi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'priceNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian vừa cập nhật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductPriceHistories', @level2type=N'COLUMN',@level2name=N'timeChange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đánh giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'productRevewId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tài khoản đang đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bình luận đánh giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'comment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đánh giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số sao đánh giá (điểm thấp nhất là 1 và cao nhất là 5)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductReviews', @level2type=N'COLUMN',@level2name=N'stars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sản phẩm/dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên sản phẩm/dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện cho sản phẩm/dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá sản phẩm/dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thuế giá trị gia tăng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'vat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời hạn bảo hành (theo ngày)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'warrantyPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả về sản phẩm/dịch vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái sản phẩm/dịch vụ (Còn hàng/Ngừng khinh doanh)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'avaliable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại sản phẩm (Khóa ngoại từ bảng Categorys)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giảm giá (Khóa ngoại từ bảng Discount)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'discountId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thương hiệu sản phẩm (Khóa ngoại từ bảng Brands)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'brandId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xuất xứ (Khóa ngoại từ bảng Origins)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'originId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã vai trò' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'roleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giảm giá cho hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'saleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần trăm được giảm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng voucher' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày bắt đầu hiệu lực' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'startDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày kết thúc hiệu lực' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo mã' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái hiệu lực của mã' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sizes', @level2type=N'COLUMN',@level2name=N'sizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả (nếu có)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sizes', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã trạng thái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Status', @level2type=N'COLUMN',@level2name=N'statusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái hiển thị' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Status', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Status', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại danh mục' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Types', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại danh mục (Sản phẩm, phụ kiện, dịch vụ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Types', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Types', @level2type=N'COLUMN',@level2name=N'description'
GO
USE [master]
GO
ALTER DATABASE [DTNsBike] SET  READ_WRITE 
GO
