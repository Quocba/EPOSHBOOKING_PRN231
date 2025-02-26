USE [EPOSHBOOKING]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[Role] [bit] NOT NULL,
	[ProfileID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[CheckInDate] [datetime2](7) NOT NULL,
	[CheckOutDate] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[Status] [bit] NOT NULL,
	[AccountID] [int] NULL,
	[RoomsID] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[DetailsID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](255) NOT NULL,
	[Images] [varbinary](max) NOT NULL,
	[FullName] [nvarchar](32) NOT NULL,
	[BookedCapacity] [int] NOT NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[DetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoriesID] [int] IDENTITY(1,1) NOT NULL,
	[SizeOfRooms] [nvarchar](255) NOT NULL,
	[TypeOfBed] [nvarchar](255) NOT NULL,
	[NumberOfMember] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galleries]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galleries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[images] [varbinary](max) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[RoomsID] [int] NULL,
 CONSTRAINT [PK_Galleries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](32) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 13/03/2024 6:16:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomsID] [int] IDENTITY(1,1) NOT NULL,
	[RoomsName] [nvarchar](255) NOT NULL,
	[Images] [varbinary](max) NULL,
	[Price] [float] NOT NULL,
	[BedsAndBeding] [nvarchar](255) NOT NULL,
	[InternetAndPhones] [nvarchar](255) NOT NULL,
	[BathAndBathroom] [nvarchar](255) NOT NULL,
	[Entertainment] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[Category] [int] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240225171641_dbinit22', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Email], [password], [Status], [Role], [ProfileID]) VALUES (1, N'baotq@eposh.com', N'dd90ee84b67957d652a66bbc825ed2d2', 0, 0, 1)
INSERT [dbo].[Account] ([Id], [Email], [password], [Status], [Role], [ProfileID]) VALUES (2, N'admin@eposh.com', N'dd90ee84b67957d652a66bbc825ed2d2', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Profile] ON 

INSERT [dbo].[Profile] ([ProfileID], [fullName], [Phone], [Address]) VALUES (1, N'Tran Quoc Bao', N'', N'')
INSERT [dbo].[Profile] ([ProfileID], [fullName], [Phone], [Address]) VALUES (2, N'Tran Quoc Bao', N'', N'')
SET IDENTITY_INSERT [dbo].[Profile] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Profile_ProfileID] FOREIGN KEY([ProfileID])
REFERENCES [dbo].[Profile] ([ProfileID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Profile_ProfileID]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Account_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Account_AccountID]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Rooms_RoomsID] FOREIGN KEY([RoomsID])
REFERENCES [dbo].[Rooms] ([RoomsID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Rooms_RoomsID]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Booking_BookingID] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Booking_BookingID]
GO
ALTER TABLE [dbo].[Galleries]  WITH CHECK ADD  CONSTRAINT [FK_Galleries_Rooms_RoomsID] FOREIGN KEY([RoomsID])
REFERENCES [dbo].[Rooms] ([RoomsID])
GO
ALTER TABLE [dbo].[Galleries] CHECK CONSTRAINT [FK_Galleries_Rooms_RoomsID]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Category_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoriesID])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Category_Category]
GO
