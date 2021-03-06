USE [master]
GO
/****** Object:  Database [db_paikesys]    Script Date: 03/29/2018 13:08:35 ******/
CREATE DATABASE [db_paikesys] ON  PRIMARY 
( NAME = N'db_paikesys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_paikesys.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_paikesys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\db_paikesys_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_paikesys] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_paikesys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_paikesys] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_paikesys] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_paikesys] SET ARITHABORT OFF
GO
ALTER DATABASE [db_paikesys] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db_paikesys] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_paikesys] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_paikesys] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_paikesys] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_paikesys] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_paikesys] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_paikesys] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_paikesys] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_paikesys] SET  DISABLE_BROKER
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_paikesys] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_paikesys] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_paikesys] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_paikesys] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_paikesys] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_paikesys] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_paikesys] SET  READ_WRITE
GO
ALTER DATABASE [db_paikesys] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_paikesys] SET  MULTI_USER
GO
ALTER DATABASE [db_paikesys] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_paikesys] SET DB_CHAINING OFF
GO
USE [db_paikesys]
GO
/****** Object:  Table [dbo].[t_teacher]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teachid] [varchar](25) NULL,
	[name] [varchar](25) NULL,
	[zhicheng] [varchar](25) NULL,
	[xueli] [varchar](25) NULL,
	[pwd] [varchar](25) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_taboo]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_taboo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL,
	[weeksstart] [varchar](5) NULL,
	[weeksend] [varchar](5) NULL,
	[tabootype] [varchar](1) NULL,
	[teachid] [varchar](25) NULL,
	[shenhe] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_major]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[remark] [text] NULL,
	[nums] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetask]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetask](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuhao] [varchar](25) NULL,
	[courseid] [varchar](25) NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[coursexingzhi] [varchar](25) NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[xueshiallz] [int] NULL,
	[xueshijiangshouz] [int] NULL,
	[xueshishiyanz] [int] NULL,
	[zhouci] [varchar](25) NULL,
	[khtype] [varchar](25) NULL,
	[courserongliang] [int] NULL,
	[teachidz] [varchar](25) NULL,
	[teachidf] [varchar](25) NULL,
	[teachids] [varchar](25) NULL,
	[dianjiao] [varchar](10) NULL,
	[shuangyu] [varchar](10) NULL,
	[remark] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetable]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskid] [int] NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_courseplan]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_courseplan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseid] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[khtype] [varchar](25) NULL,
	[score] [float] NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 03/29/2018 13:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](25) NULL,
	[userpwd] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__t_taboo__shenhe__108B795B]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_taboo] ADD  DEFAULT ('0') FOR [shenhe]
GO
/****** Object:  Default [DF__t_courset__xuesh__07F6335A]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
/****** Object:  Default [DF__t_courset__xuesh__08EA5793]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
/****** Object:  Default [DF__t_courset__xuesh__09DE7BCC]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
/****** Object:  Default [DF__t_courset__xuesh__0AD2A005]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiallz]
GO
/****** Object:  Default [DF__t_courset__xuesh__0BC6C43E]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshouz]
GO
/****** Object:  Default [DF__t_courset__xuesh__0CBAE877]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyanz]
GO
/****** Object:  Default [DF__t_courset__cours__0DAF0CB0]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [courserongliang]
GO
/****** Object:  Default [DF__t_coursep__score__023D5A04]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [score]
GO
/****** Object:  Default [DF__t_coursep__xuesh__03317E3D]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
/****** Object:  Default [DF__t_coursep__xuesh__0425A276]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
/****** Object:  Default [DF__t_coursep__xuesh__0519C6AF]    Script Date: 03/29/2018 13:08:36 ******/
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
