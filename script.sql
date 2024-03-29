USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 16/10/2019 10:18:11 a. m. ******/
CREATE USER [simpsons] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [simpsons1]    Script Date: 16/10/2019 10:18:11 a. m. ******/
CREATE USER [simpsons1] FOR LOGIN [simpsons1] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons1]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 16/10/2019 10:18:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([Id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (1, N'Homero', N'Jay', N'Simpson', 34, N'...')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
