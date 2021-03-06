USE [master]
GO
/****** Object:  Database [PetShop]    Script Date: 27/10/2016 21:37:35 ******/
CREATE DATABASE [PetShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PetShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PetShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PetShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PetShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PetShop] SET  MULTI_USER 
GO
ALTER DATABASE [PetShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PetShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PetShop]
GO
/****** Object:  Table [dbo].[Cadastro_Clientes]    Script Date: 27/10/2016 21:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cadastro_Clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](35) NULL,
	[endereco] [varchar](35) NULL,
	[cpf] [int] NULL,
	[cidade] [varchar](35) NULL,
	[estado] [varchar](2) NULL,
	[cep] [int] NULL,
	[email] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Cadastro_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cadastro_Produto]    Script Date: 27/10/2016 21:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cadastro_Produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](35) NULL,
	[quantidade] [int] NULL,
	[valor] [float] NULL,
 CONSTRAINT [PK_Cadastro_Produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 27/10/2016 21:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clienteid] [int] NULL,
	[produtoid] [int] NULL,
	[quantidade] [int] NULL,
	[valor] [float] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cadastro_Clientes] ON 

INSERT [dbo].[Cadastro_Clientes] ([id], [nome], [endereco], [cpf], [cidade], [estado], [cep], [email]) VALUES (1, N'jabson', N'rua luis', 534349714, N'assis', N'sp', 1949022, N'jabson@hotmail.com')
INSERT [dbo].[Cadastro_Clientes] ([id], [nome], [endereco], [cpf], [cidade], [estado], [cep], [email]) VALUES (2, N'jean', N'rua luis', 562345675, N'assis', N'sp', 1923422, N'jean@hotmail.com')
SET IDENTITY_INSERT [dbo].[Cadastro_Clientes] OFF
SET IDENTITY_INSERT [dbo].[Cadastro_Produto] ON 

INSERT [dbo].[Cadastro_Produto] ([id], [descricao], [quantidade], [valor]) VALUES (1, N'shampo', 10, 9.99)
INSERT [dbo].[Cadastro_Produto] ([id], [descricao], [quantidade], [valor]) VALUES (2, N'anticaspa', 20, 4.99)
SET IDENTITY_INSERT [dbo].[Cadastro_Produto] OFF
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([id], [clienteid], [produtoid], [quantidade], [valor]) VALUES (1, 1, 2, 3, 4.99)
INSERT [dbo].[Pedidos] ([id], [clienteid], [produtoid], [quantidade], [valor]) VALUES (2, 1, 2, 5, 5)
INSERT [dbo].[Pedidos] ([id], [clienteid], [produtoid], [quantidade], [valor]) VALUES (3, 2, 1, 5, 999)
INSERT [dbo].[Pedidos] ([id], [clienteid], [produtoid], [quantidade], [valor]) VALUES (4, 1, 2, 5, 333)
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Cadastro_Clientes] FOREIGN KEY([clienteid])
REFERENCES [dbo].[Cadastro_Clientes] ([id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Cadastro_Clientes]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Cadastro_Produto] FOREIGN KEY([produtoid])
REFERENCES [dbo].[Cadastro_Produto] ([id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Cadastro_Produto]
GO
USE [master]
GO
ALTER DATABASE [PetShop] SET  READ_WRITE 
GO
