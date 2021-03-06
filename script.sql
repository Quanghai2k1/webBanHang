USE [master]
GO
/****** Object:  Database [laptop]    Script Date: 4/30/2022 4:22:16 PM ******/
CREATE DATABASE [laptop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'laptop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.QUANGHAI\MSSQL\DATA\laptop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'laptop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.QUANGHAI\MSSQL\DATA\laptop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [laptop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [laptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [laptop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [laptop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [laptop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [laptop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [laptop] SET ARITHABORT OFF 
GO
ALTER DATABASE [laptop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [laptop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [laptop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [laptop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [laptop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [laptop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [laptop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [laptop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [laptop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [laptop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [laptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [laptop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [laptop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [laptop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [laptop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [laptop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [laptop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [laptop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [laptop] SET  MULTI_USER 
GO
ALTER DATABASE [laptop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [laptop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [laptop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [laptop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [laptop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [laptop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorylap]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorylap](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[catephukien]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catephukien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_catephukien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lap]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[soluong] [int] NULL,
	[manhinh] [nvarchar](max) NULL,
	[cpu] [nvarchar](max) NULL,
	[ram] [nvarchar](max) NULL,
	[ocung] [nvarchar](max) NULL,
	[dohoa] [nvarchar](max) NULL,
	[trongluong] [nvarchar](max) NULL,
	[kichthuoc] [nvarchar](max) NULL,
	[xuatxu] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phukien]    Script Date: 4/30/2022 4:22:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phukien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[gia] [nvarchar](max) NULL,
	[soluong] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[hinhanh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (1, N'Dell')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (2, N'Apple')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (3, N'Asus')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (4, N'Lenovo')
SET IDENTITY_INSERT [dbo].[catephukien] ON 

INSERT [dbo].[catephukien] ([id], [ten]) VALUES (1, N'Tai nghe')
INSERT [dbo].[catephukien] ([id], [ten]) VALUES (2, N'Chuột')
INSERT [dbo].[catephukien] ([id], [ten]) VALUES (3, N'Bàn phím')
SET IDENTITY_INSERT [dbo].[catephukien] OFF
SET IDENTITY_INSERT [dbo].[lap] ON 

INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (1, N'Asus Nitro Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/15/637751569796016673_acer-nitro-gaming-an515-45-den-dd.jpg', 100.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 3, 1, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit
', N'Intel, Core i5, 10300H
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics
', N'2.2 kg
', N'363.4 x 255 x 23.9 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (2, N'Asus TUF Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/1/26/637787904727727554_asus-tuf-gaming-fx506lh-den-2022-dd.jpg', 120.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 3, 6, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit
', N'Intel, Core i5, 10300H
', N'8 GB, DDR4, 2933 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce GTX 1650 4GB; Intel UHD Graphics
', N'2.3 kg
', N'359 x 256 x 24.9 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (8, N'Laptop Asus Aspire', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/18/637728596076020587_acer-aspire-gaming-a715-42g-r1sb-r5-5500u-den-dd.jpg', 150.0000, N'laptop', N'New Men''s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 3, 15, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView Anti-glare LED-backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics
', N'2.1 kg
', N'363.4 x 254.5 x 22.9 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (9, N'Lenovo Ideapad Slim 3', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/4/21/637861584460182816_lenovo-ideapad-3-14itl6-vang-dd-1.jpg', 180.0000, N'laptop', N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', 4, 14, 10, N'14.0 inch, 1920 x 1080 Pixels, TN, 250 nits, Anti-glare LED-backlit
', N'Intel, Core i3, 1115G4
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'1.41 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (3, N'Dell Gaming Alienware', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/7/637822697106524805_dell-gaming-alienware-m15-r6-den-dd.jpg', 130.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 10, N'15.6 inch, 2560 x 1440 Pixels, WVA, 240 Hz, 400 nits, Wide-Viewing Angle (WVA)
', N'Intel, Core i7, 11800H
', N'NULL32 GB (2 thanh 16 GB), DDR4, 3200 MHz
', N'SSD 1 TB
', N'NVIDIA GeForce RTX 3070 8GB; Intel UHD Graphics
', N'2.7 kg', N'356 x 272 x 19 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (4, N'Lenovo 100e Gen 2', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/30/637738603461090929_lenovo-100e-gen-2-n4020-win-10-pro-dd.jpg', 140.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 4, 1, 10, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, LPDDR4, 2400 MHz
', N'eMMC 64 GB
', N'Intel UHD Graphics 600
', N'1.21 kg
', N'290 x 204.7 x 19.9 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (10, N'Dell Inspiron N3510', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/21/637704096245522041_dell-inspiron-n3510-black-dd.jpg', 180.0000, N'laptop', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 1, 15, 10, N'15.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 220 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, DDR4, 3200 MHz
', N'SSD 128 GB
', N'Intel UHD Graphics 600
', N'1.65 kg
', N'15.6 x 358.5 x 235 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (11, N'MacBook Pro 16', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703174146015116_macbook-pro-16-2021-xam-dd.jpg', 150.0000, N'laptop', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 2, 17, 10, N'16.2 inch, 3456 x 2234 Pixels
', N'Apple, M1 Pro
', N'32 GB
', N'SSD 512 GB
', N'Apple M1
', N'2.129 kg
', N'15.6 x 358.5 x 235 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (5, N'MacBook Pro 14', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703173013037856_macbook-pro-14-2021-xam-dd.jpg', 150.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 6, 10, N'14.2 inch, 3024 x 1964 Pixels

', N'Apple, M1 Pro

', N'32 GB

', N'SSD 512 GB

', N'Apple M1

', N'1.604 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (6, N'Laptop Dell XPS 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/3/22/637520284988683886_dell-xps-13-9310-bac-dd-evo.jpg', 160.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 10, N'13.4 inch, 1920 x 1200 Pixels, WVA, 60 Hz, 500 nits, Wide-Viewing Angle (WVA)

', N'Intel, Core i5, 1135G7

', N'8 GB, LPDDR4X, 4267 MHz

', N'SSD 512 GB

', N'Intel Iris Xe Graphics

', N'1.2 kg
', N'296.9 x 198 x 14.7 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (12, N'Laptop Dell Gaming G15', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/2/637740490696341842_dell-gaming-g15-5511-xam-dd.jpg', 165.0000, N'laptop', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 1, 19, 10, N'15.6 inch, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border
', N'Intel, Core i7, 11800H
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'2.81 kg
', N'25 x 357.2 x 272 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (13, N'Laptop Dell Gaming G15', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/17/637674999026443727_dell-gaming-g15-5515-r7-5800h-xam-rtx-3050ti-dd.jpg', 185.0000, N'laptop', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', 1, 18, 10, N'15.6 inch Chính:, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, Wide-Viewing Angle (WVA) Chính:
', N'AMD, Ryzen 7, 5800H
', N'16 GB (2 thanh 8 GB), DDR4, 3200 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce RTX 3050Ti 4 GB; AMD Radeon Graphics
', N'2.81 kg
', N'357x272x25 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (7, N'Asus Zenbook Duo', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 170.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 3, 14, 10, N'14.0 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 400 nits, Anti-glare LED-backlit
', N'Intel, Core i5, 1135G7
', N'8 GB, LPDDR4X, 4267 MHz
', N'SSD 512 GB
', N'Intel Iris Xe Graphics
', N'1.62 kg
', N'296.9 x 198 x 14.7 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (14, N'Lenovo Gaming Legion 5', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/1/12/637775770104947441_lenovo-legion-5-15ach6-xden-rtx-3050-dd.jpg', 200.0000, N'laptop', N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes
', 4, 1, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 165 Hz, 300 nits, IPS LCD LED Backlit, True Tone

', N'Ryzen 7, 5800H

', N'8 GB, DDR4, 3200 MHz

', N'SSD 512 GB

', N'NVIDIA GeForce RTX 3050Ti 4 GB; AMD Radeon Graphics

', N'2.4 kg
', N'22.5 x 362.2 x 260 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (15, N'Lenovo Yoga Slim 7', N'https://canary.contestimg.wish.com/api/webimage/5c4a06d9e6a1c62df8877125-large.jpg?cache_buster=d17e757a3f8465edc71812b95b4b1a57', 100.0000, N'laptop', N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', 4, 6, 10, N'14.0 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 300 nits, IPS LCD LED Backlit, True Tone
', N'Core i5, 1135G7
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel Iris Xe Graphics
', N'1.36 kg
', N'14.9 x 320.5 x 208.5 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (16, N'Lenovo IdeaPad', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/9/18/637360390392454557_hp-envy-13-vang-dd.png', 120.0000, N'laptop', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 4, 7, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 300 nits, IPS LCD LED Backlit, True Tone
', N'Intel, Core i5, 1135G7
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel Iris Xe Graphics
', N'1.66 kg
', N'17.9 x 356.67 x 233.13 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (17, N'Modern 15 A5M ', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/18/637832262308845531_masstel-e140-celeron-n4120-xam-dd.jpg', 100.0000, N'laptop', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1, 10, N'15.6 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 250 nits, LED Backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'AMD Radeon Graphics
', N'1.6 kg
', N'18.9 x 356.8 x 233.7 mm
', N'Trung Quốc
')
INSERT [dbo].[lap] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [manhinh], [cpu], [ram], [ocung], [dohoa], [trongluong], [kichthuoc], [xuatxu]) VALUES (18, N'MacBook Pro 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/11/13/637408530311831907_mbp-2020-m1-gray-dd-1.png', 120.0000, N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 2, 7, 10, N'13.3 inch, 2560 x 1600 Pixels, IPS, IPS LCD LED Backlit, True Tone
', N'Apple, M1
', N'16 GB, LPDDR4
', N'SSD 512 GB
', N'Apple M1 GPU 8 nhân
', N'1.4 kg
', N'304.1 x 212.4 x 15.6 mm
', N'Trung Quốc
')
SET IDENTITY_INSERT [dbo].[lap] OFF
SET IDENTITY_INSERT [dbo].[phukien] ON 

INSERT [dbo].[phukien] ([id], [ten], [gia], [soluong], [mota], [cateID], [hinhanh]) VALUES (1, N'Tai nghe HyperX Cloud Stinger', N'200.000', N'10', N'Với mức giá rất đáng cân nhắc khi đong đếm về chất lượng/giá cả so với các dòng tai nghe khác, HyperX Cloud Stinger chắc chắn sẽ là một trong những tai nghe gaming nổi bật trong phân khúc Mid-end.', 1, N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/11/10/637721638521972942_anhdaidien-00779689.jpg')
INSERT [dbo].[phukien] ([id], [ten], [gia], [soluong], [mota], [cateID], [hinhanh]) VALUES (2, N' tai có mic JBL QUANTUM50BLKAS', N'150.000', N'10', N'Được đảm bảo bởi thương hiệu sản xuất thiết bị âm thanh lừng danh trên thị trường - JBL, mẫu tai nghe Quantum 50 ghi điểm nhờ thiết kế đầy vẻ năng động trẻ trung, đồng thời sở hữu chất âm ấn tượng với driver 8.6mm. Sự hỗ trợ của sản phẩm sẽ giúp cho mọi tác vụ từ giải trí đến học tập và làm việc trở nên trọn vẹn hơn nhiều.', 1, N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/10/29/637711178012905930_55687_tai_nghe_gaming_jbl_quantum_50_trang_0002_3.jpg')
INSERT [dbo].[phukien] ([id], [ten], [gia], [soluong], [mota], [cateID], [hinhanh]) VALUES (3, N'Chuột không dây Logitech M221', N'200.000', N'10', N'Nhằm để giảm thiểu những sự phiền toái và giới hạn khoảng cách do chuột máy tính có dây thì chuột không dây Logitech M221 được ra đời. Với công nghệ không dây 2.4GHz, chuột Logitech M221 cho phép người dùng kết nối xa lên đến 10m.', 2, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2020/11/25/637418984502900576_M221.jpg')
INSERT [dbo].[phukien] ([id], [ten], [gia], [soluong], [mota], [cateID], [hinhanh]) VALUES (4, N'Chuột có dây Rapoo N200 ', N'150.000', N'10', NULL, 2, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2018/11/7/636772096317963039_chuot-co-day-rapoo-n200-1o.png')
SET IDENTITY_INSERT [dbo].[phukien] OFF
ALTER TABLE [dbo].[phukien]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[catephukien] ([id])
GO
USE [master]
GO
ALTER DATABASE [laptop] SET  READ_WRITE 
GO
