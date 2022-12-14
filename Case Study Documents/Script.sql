USE [master]
GO
/****** Object:  Database [RailwaySystem]    Script Date: 18-11-2022 11:57:37 ******/
CREATE DATABASE [RailwaySystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RailwaySystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RailwaySystem.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RailwaySystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RailwaySystem_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RailwaySystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RailwaySystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RailwaySystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RailwaySystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RailwaySystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RailwaySystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RailwaySystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [RailwaySystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RailwaySystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RailwaySystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RailwaySystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RailwaySystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RailwaySystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RailwaySystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RailwaySystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RailwaySystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RailwaySystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RailwaySystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RailwaySystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RailwaySystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RailwaySystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RailwaySystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RailwaySystem] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RailwaySystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RailwaySystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RailwaySystem] SET  MULTI_USER 
GO
ALTER DATABASE [RailwaySystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RailwaySystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RailwaySystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RailwaySystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RailwaySystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RailwaySystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18-11-2022 11:57:37 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bankCred]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bankCred](
	[BankCredId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BankName] [varchar](50) NOT NULL,
	[CardNumber] [nvarchar](11) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_bankCred] PRIMARY KEY CLUSTERED 
(
	[BankCredId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[TrainId] [int] NULL,
	[UserId] [int] NOT NULL,
	[Classes] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[SeatNum] [int] NOT NULL,
	[PassengerId] [int] NOT NULL,
	[fare] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[passenger]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passenger](
	[PassengerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PName] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[gender] [nvarchar](max) NULL,
	[Class] [nvarchar](max) NULL,
 CONSTRAINT [PK_passenger] PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quotas]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quotas](
	[QuotaId] [int] IDENTITY(1,1) NOT NULL,
	[SeatId] [varchar](50) NOT NULL,
	[type] [nvarchar](max) NULL,
	[Percentage] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_quotas] PRIMARY KEY CLUSTERED 
(
	[QuotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[seat]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[TrainId] [int] NOT NULL,
	[FirstAC] [int] NOT NULL,
	[SecondAC] [int] NOT NULL,
	[Sleeper] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_seat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tickets]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[TransId] [int] NULL,
	[Date] [datetime2](7) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
	[isActive] [bit] NOT NULL,
	[TransactionId] [int] NULL,
 CONSTRAINT [PK_tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trains]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trains](
	[TrainId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[ArrivalTime] [nvarchar](max) NULL,
	[DepartureTime] [nvarchar](max) NULL,
	[ArrivalDate] [datetime2](7) NOT NULL,
	[DepartureDate] [datetime2](7) NOT NULL,
	[ArrivalStation] [nvarchar](max) NULL,
	[DepartureStation] [nvarchar](max) NULL,
	[distance] [float] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_trains] PRIMARY KEY CLUSTERED 
(
	[TrainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NULL,
	[Fare] [decimal](18, 4) NOT NULL,
	[TransactionStatus] [varchar](20) NOT NULL,
 CONSTRAINT [PK_transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 18-11-2022 11:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Mobile] [nvarchar](max) NULL,
	[Password] [varchar](25) NOT NULL,
	[Role] [varchar](15) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_bankCred_UserId]    Script Date: 18-11-2022 11:57:37 ******/
CREATE NONCLUSTERED INDEX [IX_bankCred_UserId] ON [dbo].[bankCred]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_bookings_TrainId]    Script Date: 18-11-2022 11:57:37 ******/
CREATE NONCLUSTERED INDEX [IX_bookings_TrainId] ON [dbo].[bookings]
(
	[TrainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_seat_TrainId]    Script Date: 18-11-2022 11:57:37 ******/
CREATE NONCLUSTERED INDEX [IX_seat_TrainId] ON [dbo].[seat]
(
	[TrainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tickets_TransactionId]    Script Date: 18-11-2022 11:57:37 ******/
CREATE NONCLUSTERED INDEX [IX_tickets_TransactionId] ON [dbo].[tickets]
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_transaction_BookingId]    Script Date: 18-11-2022 11:57:37 ******/
CREATE NONCLUSTERED INDEX [IX_transaction_BookingId] ON [dbo].[transaction]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bankCred]  WITH CHECK ADD  CONSTRAINT [FK_bankCred_users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bankCred] CHECK CONSTRAINT [FK_bankCred_users_UserId]
GO
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD  CONSTRAINT [FK_bookings_trains_TrainId] FOREIGN KEY([TrainId])
REFERENCES [dbo].[trains] ([TrainId])
GO
ALTER TABLE [dbo].[bookings] CHECK CONSTRAINT [FK_bookings_trains_TrainId]
GO
ALTER TABLE [dbo].[seat]  WITH CHECK ADD  CONSTRAINT [FK_seat_trains_TrainId] FOREIGN KEY([TrainId])
REFERENCES [dbo].[trains] ([TrainId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[seat] CHECK CONSTRAINT [FK_seat_trains_TrainId]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [FK_tickets_transaction_TransactionId] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[transaction] ([TransactionId])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [FK_tickets_transaction_TransactionId]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_transaction_bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[bookings] ([BookingId])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_transaction_bookings_BookingId]
GO
USE [master]
GO
ALTER DATABASE [RailwaySystem] SET  READ_WRITE 
GO
