USE [master]
GO
/****** Object:  Database [BdControlEntradasSalidas]    Script Date: 27/12/2022 1:09:47 a. m. ******/
CREATE DATABASE [BdControlEntradasSalidas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BdControlEntradasSalidas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\BdControlEntradasSalidas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BdControlEntradasSalidas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\BdControlEntradasSalidas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BdControlEntradasSalidas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BdControlEntradasSalidas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ARITHABORT OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET  MULTI_USER 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BdControlEntradasSalidas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BdControlEntradasSalidas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BdControlEntradasSalidas] SET QUERY_STORE = OFF
GO
USE [BdControlEntradasSalidas]
GO
/****** Object:  Table [dbo].[TbDepartamento]    Script Date: 27/12/2022 1:09:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDepartamento](
	[ID] [int] NULL,
	[NombreDepartamento] [nchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEmpleado]    Script Date: 27/12/2022 1:09:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEmpleado](
	[ID] [int] NULL,
	[Nombre] [nchar](40) NULL,
	[Cedula] [nchar](15) NULL,
	[Telefono] [nchar](10) NULL,
	[Departamento] [nchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEntradaSalida]    Script Date: 27/12/2022 1:09:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEntradaSalida](
	[Nombre] [nchar](40) NULL,
	[Departamento] [nchar](40) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbVisitante]    Script Date: 27/12/2022 1:09:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbVisitante](
	[ID] [int] NULL,
	[Nombre] [nchar](40) NULL,
	[Cedula] [nchar](15) NULL,
	[Telefono] [nchar](10) NULL,
	[Departamento] [nchar](40) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TbDepartamento] ([ID], [NombreDepartamento]) VALUES (3, N'Soporte Tecnico                         ')
INSERT [dbo].[TbDepartamento] ([ID], [NombreDepartamento]) VALUES (2, N'Contabilidad                            ')
INSERT [dbo].[TbDepartamento] ([ID], [NombreDepartamento]) VALUES (1, N'Administracion                          ')
GO
INSERT [dbo].[TbEmpleado] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (101, N'Ashley Tavarez                          ', N'4022525252518  ', N'8098098098', N'Soporte Tecnico                         ')
INSERT [dbo].[TbEmpleado] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (102, N'Dominic Tavarez                         ', N'4022626262618  ', N'849849849 ', N'Administracion                          ')
INSERT [dbo].[TbEmpleado] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (103, N'Darwin Santana                          ', N'0012828282286  ', N'8292929299', N'Soporte Tecnico                         ')
INSERT [dbo].[TbEmpleado] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (103, N'Jean Carlos                             ', N'0232848562286  ', N'8282654299', N'Contabilidad                            ')
GO
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Ashley Tavarez                          ', N'Soporte Tecnico                         ', CAST(N'2022-12-12T09:00:00.000' AS DateTime), CAST(N'2022-12-12T18:00:00.000' AS DateTime))
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Dominic Tavarez                         ', N'Administracion                          ', CAST(N'2022-12-12T08:00:00.000' AS DateTime), CAST(N'2022-12-12T17:00:00.000' AS DateTime))
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Darwin Santana                          ', N'Soporte Tecnico                         ', CAST(N'2022-12-12T08:00:00.000' AS DateTime), CAST(N'2022-12-12T17:00:00.000' AS DateTime))
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Jean Carlos                             ', N'Contabilidad                            ', CAST(N'2022-12-12T09:00:00.000' AS DateTime), CAST(N'2022-12-12T18:00:00.000' AS DateTime))
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Loanny Nin                              ', N'Visitante                               ', CAST(N'2022-12-12T10:22:00.000' AS DateTime), CAST(N'2022-12-12T10:47:00.000' AS DateTime))
INSERT [dbo].[TbEntradaSalida] ([Nombre], [Departamento], [FechaEntrada], [FechaSalida]) VALUES (N'Fendry Beltre                           ', N'Visitante                               ', CAST(N'2022-12-12T15:08:00.000' AS DateTime), CAST(N'2022-12-12T15:37:00.000' AS DateTime))
GO
INSERT [dbo].[TbVisitante] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (201, N'Fendry Beltre                           ', N'02859227456286 ', N'8225856990', N'Visitante                               ')
INSERT [dbo].[TbVisitante] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (202, N'Kelvin Munoz                            ', N'5487215468235  ', N'5264872156', N'Visitante                               ')
INSERT [dbo].[TbVisitante] ([ID], [Nombre], [Cedula], [Telefono], [Departamento]) VALUES (203, N'Loanny Nin                              ', N'2159864725136  ', N'1425897653', N'Visitante                               ')
GO
USE [master]
GO
ALTER DATABASE [BdControlEntradasSalidas] SET  READ_WRITE 
GO
