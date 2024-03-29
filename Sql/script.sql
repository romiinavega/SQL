USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 15/10/2019 08:56:51 p. m. ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 15/10/2019 08:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descript] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descript]) VALUES (1, N'Homero', N'Jay', N'Simpson', 34, N'Papa de Bart, Lisa y Maggie Simpsons')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descript]) VALUES (2, N'Bartolomeo', N'Jay', N'Simpson', 34, N'Hermano de Lisa y Maggie Simpsons')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
