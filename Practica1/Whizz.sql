USE [master]
GO
/****** Object:  Database [Whizz]    Script Date: 15/06/2015 18:43:33 ******/
CREATE DATABASE [Whizz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Whizz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\Whizz.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Whizz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\Whizz_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Whizz] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Whizz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Whizz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Whizz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Whizz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Whizz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Whizz] SET ARITHABORT OFF 
GO
ALTER DATABASE [Whizz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Whizz] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Whizz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Whizz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Whizz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Whizz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Whizz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Whizz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Whizz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Whizz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Whizz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Whizz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Whizz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Whizz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Whizz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Whizz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Whizz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Whizz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Whizz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Whizz] SET  MULTI_USER 
GO
ALTER DATABASE [Whizz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Whizz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Whizz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Whizz] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Whizz]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/06/2015 18:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[No.Carnet] [int] NOT NULL,
	[NombreC] [varchar](50) NULL,
	[DPI] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Cod_Libro] [int] NULL,
	[PrestamoC] [int] NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[No.Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ejemplar]    Script Date: 15/06/2015 18:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejemplar](
	[Cod_Ejemplar] [int] NOT NULL,
	[No.Ejemplares] [int] NULL,
	[Cod_Libro] [int] NULL,
 CONSTRAINT [PK_Ejemplar] PRIMARY KEY CLUSTERED 
(
	[Cod_Ejemplar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Libro]    Script Date: 15/06/2015 18:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libro](
	[Cod_Libro] [int] NOT NULL,
	[NombreL] [varchar](50) NOT NULL,
	[Existencias] [int] NOT NULL,
	[Paginas] [int] NOT NULL,
	[Tema] [varchar](50) NOT NULL,
	[Autor1] [varchar](50) NULL,
	[Autor2] [varchar](50) NULL,
	[Autor3] [varchar](50) NULL,
	[Disponible] [int] NULL,
	[Prestamo] [int] NULL,
	[Reservados] [int] NULL,
	[ExistenciaEnBiblioteca] [int] NULL,
	[TopPrestamo] [int] NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[Cod_Libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 15/06/2015 18:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestamo](
	[Cod_Prestamo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](45) NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Cod_Libro] [int] NOT NULL,
	[No.Carnet] [int] NOT NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[Cod_Prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Libro] FOREIGN KEY([Cod_Libro])
REFERENCES [dbo].[Libro] ([Cod_Libro])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Libro]
GO
ALTER TABLE [dbo].[Ejemplar]  WITH CHECK ADD  CONSTRAINT [FK_Ejemplar_Libro] FOREIGN KEY([Cod_Libro])
REFERENCES [dbo].[Libro] ([Cod_Libro])
GO
ALTER TABLE [dbo].[Ejemplar] CHECK CONSTRAINT [FK_Ejemplar_Libro]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Cliente] FOREIGN KEY([No.Carnet])
REFERENCES [dbo].[Cliente] ([No.Carnet])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Cliente]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Libro] FOREIGN KEY([Cod_Libro])
REFERENCES [dbo].[Libro] ([Cod_Libro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Libro]
GO
USE [master]
GO
ALTER DATABASE [Whizz] SET  READ_WRITE 
GO
