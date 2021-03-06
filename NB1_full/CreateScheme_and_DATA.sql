USE [NB1]
GO
/****** Object:  Table [dbo].[labdarugo]    Script Date: 2019. 03. 27. 11:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labdarugo](
	[id] [int] NOT NULL,
	[mezszam] [int] NOT NULL,
	[klubid] [int] NOT NULL,
	[posztid] [int] NOT NULL,
	[utonev] [nvarchar](50) NULL,
	[vezeteknev] [nvarchar](50) NOT NULL,
	[szulido] [datetime2](7) NOT NULL,
	[magyar] [int] NOT NULL,
	[kulfoldi] [int] NOT NULL,
	[ertek] [int] NOT NULL,
 CONSTRAINT [PK_labdarugo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vLabdarugoMez]    Script Date: 2019. 03. 27. 11:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLabdarugoMez]
AS
SELECT        id, mezszam, vezeteknev
FROM            dbo.labdarugo
GO
/****** Object:  Table [dbo].[klub]    Script Date: 2019. 03. 27. 11:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[klub](
	[id] [int] NOT NULL,
	[csapatnev] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_klub] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poszt]    Script Date: 2019. 03. 27. 11:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poszt](
	[id] [int] NOT NULL,
	[nev] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_poszt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (1, N'Vasas FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (2, N'Ferencvárosi TC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (3, N'Puskás Akadémia FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (4, N'Debreceni VSC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (5, N'Budapest Honvéd FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (6, N'Szombathelyi Haladás')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (7, N'Paksi FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (8, N'Mezőkövesd Zsóry FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (9, N'Diósgyőri VTK')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (10, N'Újpest FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (11, N'Balmazújváros FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (12, N'Videoton FC')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (13, N'Budapest Cowbells')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (14, N'Budapest Wolves')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (15, N'Budapest Titans')
GO
INSERT [dbo].[klub] ([id], [csapatnev]) VALUES (16, N'TD Store Eagles')
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (1, 18, 11, 4, N'Attila', N'Haris', CAST(N'1997-01-23T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (2, 31, 6, 12, N'Márió', N'Németh', CAST(N'1995-05-01T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (3, 77, 4, 2, N'Aleksandar', N'Jovanovic', CAST(N'1984-10-26T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (4, 14, 4, 8, N'Krisztián', N'Kuti', CAST(N'1992-12-04T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (5, 9, 3, 10, N'Ulysse', N'Diallo', CAST(N'1992-10-26T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (6, 12, 3, 4, N'Balázs', N'Balogh', CAST(N'1990-06-11T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (7, 33, 3, 7, N'Gábor', N'Molnár', CAST(N'1994-05-16T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (8, 7, 7, 1, N'Tamás', N'Báló', CAST(N'1984-01-12T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (9, 17, 12, 4, N'Máté', N'Pátkai', CAST(N'1988-03-06T00:00:00.0000000' AS DateTime2), -1, 0, 750)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (10, 10, 8, 4, N'Bence', N'Iszlai', CAST(N'1990-05-29T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (11, 28, 2, 12, N'Joseph', N'Paintsil', CAST(N'1998-02-01T00:00:00.0000000' AS DateTime2), 0, -1, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (12, 12, 6, 6, N'Bence', N'Kiss', CAST(N'1999-07-01T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (13, 1, 9, 9, N'Erik', N'Bukrán', CAST(N'1996-12-06T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (14, 71, 11, 2, N'Ádám', N'Orovecz', CAST(N'1997-10-23T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (15, 23, 11, 7, N'Ádám', N'Kovács', CAST(N'1991-04-14T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (16, 27, 1, 7, N'Benedek', N'Murka', CAST(N'1997-09-10T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (17, 19, 9, 8, N'Tibor', N'Nagy', CAST(N'1991-08-14T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (18, 22, 7, 12, N'Áron', N'Fejős', CAST(N'1997-04-17T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (19, 56, 11, 10, N'Miklós', N'Belényesi', CAST(N'1983-05-15T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (20, 1, 3, 9, N'Balázs', N'Tóth', CAST(N'1997-09-04T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (21, 6, 4, 8, N'Balázs', N'Bényei', CAST(N'1990-01-10T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (22, 21, 6, 3, N'Tamás', N'Kiss', CAST(N'2000-11-24T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (23, 25, 4, 10, N'Haris', N'Tabakovic', CAST(N'1994-06-20T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (24, 14, 10, 6, N'Alassane', N'Diallo', CAST(N'1995-02-19T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (25, 94, 7, 10, N'Bence', N'Daru', CAST(N'1994-06-05T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (26, 99, 8, 12, N'Márk', N'Murai', CAST(N'1996-07-15T00:00:00.0000000' AS DateTime2), -1, 0, 25)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (27, 40, 1, 10, N'István', N'Ferenczi', CAST(N'1977-09-14T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (28, 3, 6, 8, N'Dávid', N'Tóth', CAST(N'1998-07-09T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (29, 4, 9, 11, N'Márk', N'Tamás', CAST(N'1993-10-28T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (30, 74, 12, 9, N'Ádám', N'Kovácsik', CAST(N'1991-04-04T00:00:00.0000000' AS DateTime2), -1, 0, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (31, 17, 10, 13, N'Viktor', N'Angelov', CAST(N'1994-03-27T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (32, 31, 12, 5, N'Dávid', N'Barczi', CAST(N'1989-02-01T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (33, 26, 11, 5, N'Sándor', N'Vajda', CAST(N'1991-12-14T00:00:00.0000000' AS DateTime2), -1, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (34, 30, 7, 1, N'János', N'Szabó', CAST(N'1989-07-11T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (35, 25, 12, 1, N'Krisztián', N'Tamás', CAST(N'1995-04-18T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (36, 6, 11, 11, N'Krisztián', N'Póti', CAST(N'1988-05-28T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (37, 14, 8, 10, N'Lazar', N'Veselinovic', CAST(N'1986-08-04T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (38, 9, 9, 10, N'Patrik', N'Bacsa', CAST(N'1992-06-03T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (39, 1, 11, 9, N'Gergő', N'Szécsi', CAST(N'1989-02-07T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (40, 2, 5, 11, N'Dávid', N'Bobál', CAST(N'1995-08-31T00:00:00.0000000' AS DateTime2), -1, 0, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (41, 2, 8, 8, N'Dániel', N'Farkas', CAST(N'1993-01-13T00:00:00.0000000' AS DateTime2), -1, -1, 225)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (42, 87, 9, 11, N'Róbert', N'Tucsa', CAST(N'1998-03-17T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (43, 29, 2, 10, N'Tamás', N'Priskin', CAST(N'1986-09-27T00:00:00.0000000' AS DateTime2), -1, 0, 500)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (44, 55, 11, 6, N'István', N'Bódis', CAST(N'1997-01-19T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (45, 97, 2, 7, N'Roland', N'Varga', CAST(N'1990-01-23T00:00:00.0000000' AS DateTime2), -1, 0, 1000)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (46, 16, 5, 6, N'Zsolt', N'Pölöskei', CAST(N'1991-02-19T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (47, 5, 12, 8, N'Attila', N'Fiola', CAST(N'1990-02-17T00:00:00.0000000' AS DateTime2), -1, 0, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (48, 13, 6, 8, N'Kristóf', N'Polgár', CAST(N'1996-11-28T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (49, 42, 4, 7, N'Norbert', N'Könyves', CAST(N'1989-06-10T00:00:00.0000000' AS DateTime2), -1, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (50, 23, 1, 4, N'Máté', N'Vida', CAST(N'1996-03-08T00:00:00.0000000' AS DateTime2), -1, 0, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (51, 86, 10, 10, N'Soma', N'Novothny', CAST(N'1994-06-16T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (52, 4, 1, 11, N'Kire', N'Ristevski', CAST(N'1990-10-22T00:00:00.0000000' AS DateTime2), 0, -1, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (53, 1, 7, 9, N'Péter', N'Molnár', CAST(N'1983-12-14T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (54, 28, 10, 6, N'Obinna', N'Nwobodo', CAST(N'1996-11-29T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (55, 55, 12, 11, N'Bence', N'Tóth', CAST(N'1998-05-25T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (56, 86, 5, 1, N'Zsolt', N'Laczkó', CAST(N'1986-12-18T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (57, 10, 10, 7, N'Donát', N'Zsótér', CAST(N'1996-01-06T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (58, 13, 2, 10, N'Dániel', N'Böde', CAST(N'1986-10-21T00:00:00.0000000' AS DateTime2), -1, 0, 600)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (59, 90, 8, 9, N'Tomas', N'Tujvel', CAST(N'1983-09-19T00:00:00.0000000' AS DateTime2), 0, -1, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (60, 17, 8, 11, N'Róbert', N'Pillár', CAST(N'1991-05-27T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (61, 20, 5, 4, N'Mihály', N'Csábi', CAST(N'1995-03-25T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (62, 6, 6, 11, N'Stef', N'Wils', CAST(N'1982-08-02T00:00:00.0000000' AS DateTime2), 0, -1, 225)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (63, 31, 2, 9, N'Ádám', N'Holczer', CAST(N'1988-03-28T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (64, 1, 10, 9, N'Filip', N'Pajovic', CAST(N'1993-07-30T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (65, 30, 9, 6, NULL, N'Nono', CAST(N'1993-03-30T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (66, 94, 9, 8, N'Gábor', N'Eperjesi', CAST(N'1994-01-12T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (67, 30, 2, 12, N'Rui', N'Pedro', CAST(N'1988-07-02T00:00:00.0000000' AS DateTime2), 0, -1, 750)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (68, 10, 4, 10, N'Tibor', N'Tisza', CAST(N'1984-11-10T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (69, 20, 3, 11, N'Vilmos', N'Vanczák', CAST(N'1983-06-20T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (70, 16, 6, 12, N'Barnabás', N'Rácz', CAST(N'1996-04-26T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (71, 90, 2, 9, N'Dénes', N'Dibusz', CAST(N'1990-11-16T00:00:00.0000000' AS DateTime2), -1, 0, 750)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (72, 8, 12, 4, N'Anel', N'Hadzic', CAST(N'1989-08-16T00:00:00.0000000' AS DateTime2), 0, -1, 800)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (73, 23, 7, 8, N'András', N'Vági', CAST(N'1988-12-25T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (74, 24, 8, 3, N'Tamás', N'Cseri', CAST(N'1988-01-15T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (75, 28, 3, 6, N'Stipe', N'Bacelic-Grgic', CAST(N'1988-02-16T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (76, 9, 8, 10, N'Csanád', N'Novák', CAST(N'1994-09-24T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (77, 18, 5, 9, N'András', N'Horváth', CAST(N'1988-02-23T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (78, 20, 1, 4, N'Márk', N'Kleisz', CAST(N'1998-07-02T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (79, 44, 3, 9, N'Branislav', N'Danilovic', CAST(N'1988-06-24T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (80, 33, 4, 4, N'Richárd', N'Csősz', CAST(N'1997-04-22T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (81, 92, 5, 10, N'Kristóf', N'Herjeczki', CAST(N'1998-06-29T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (82, 91, 2, 10, N'Balázs', N'Lovrencsics', CAST(N'1991-08-30T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (83, 20, 9, 6, N'Attila', N'Busai', CAST(N'1989-01-21T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (84, 8, 9, 4, N'Bálint', N'Oláh', CAST(N'1994-12-02T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (85, 15, 9, 4, N'Barnabás', N'Tóth', CAST(N'1994-07-28T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (86, 22, 10, 1, N'Dávid', N'Mohl', CAST(N'1985-04-28T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (87, 69, 11, 10, N'Roland', N'Vólent', CAST(N'1992-09-23T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (88, 3, 1, 4, N'Manjrekar', N'James', CAST(N'1993-08-05T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (89, 10, 12, 12, N'István', N'Kovács', CAST(N'1992-03-27T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (90, 66, 5, 9, N'Attila', N'Berla', CAST(N'1999-04-08T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (91, 8, 1, 10, N'Martin', N'Ádám', CAST(N'1994-11-06T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (92, 11, 2, 12, N'István', N'Bognár', CAST(N'1991-05-06T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (93, 16, 10, 4, N'Anton', N'Jönsson Salétros', CAST(N'1996-04-12T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (94, 22, 12, 1, NULL, N'Stopira', CAST(N'1988-05-20T00:00:00.0000000' AS DateTime2), 0, -1, 750)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (95, 66, 6, 9, N'Dániel', N'Rózsa', CAST(N'1984-11-24T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (96, 39, 8, 11, N'Dávid', N'Hudák', CAST(N'1993-03-21T00:00:00.0000000' AS DateTime2), 0, -1, 275)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (97, 9, 1, 2, N'Botond', N'Király', CAST(N'1994-10-26T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (98, 15, 8, 12, N'Marek', N'Strestik', CAST(N'1987-02-01T00:00:00.0000000' AS DateTime2), -1, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (99, 7, 1, 1, N'Szilveszter', N'Hangya', CAST(N'1994-01-02T00:00:00.0000000' AS DateTime2), -1, 0, 600)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (100, 24, 4, 4, N'Danilo', N'Sekulic', CAST(N'1990-04-18T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (101, 3, 2, 10, N'Norbert', N'Kundrák', CAST(N'1999-05-18T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (102, 9, 5, 10, N'Márton', N'Eppel', CAST(N'1991-10-26T00:00:00.0000000' AS DateTime2), -1, 0, 650)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (103, 14, 3, 11, N'Jonathan', N'Heris', CAST(N'1990-09-03T00:00:00.0000000' AS DateTime2), 0, -1, 600)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (104, 19, 10, 11, N'Mijusko', N'Bojovic', CAST(N'1988-08-09T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (105, 14, 2, 11, N'Zsombor', N'Takács', CAST(N'1999-02-22T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (106, 96, 7, 11, N'Bence', N'Lenzsér', CAST(N'1996-04-09T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (107, 8, 3, 6, N'Dávid', N'Márkvárt', CAST(N'1994-09-20T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (108, 23, 2, 3, N'Lukács', N'Bőle', CAST(N'1990-03-27T00:00:00.0000000' AS DateTime2), -1, 0, 800)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (109, 7, 10, 7, N'Krisztián', N'Simon', CAST(N'1991-06-10T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (110, 5, 7, 11, N'Zsolt', N'Gévay', CAST(N'1987-11-19T00:00:00.0000000' AS DateTime2), -1, 0, 225)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (111, 11, 6, 10, N'David', N'Williams', CAST(N'1988-02-26T00:00:00.0000000' AS DateTime2), 0, -1, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (112, 39, 7, 3, N'László', N'Bartha', CAST(N'1987-02-09T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (113, 4, 4, 4, N'Ioan', N'Filip', CAST(N'1989-05-20T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (114, 17, 9, 4, N'Miklós', N'Kitl', CAST(N'1997-06-01T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (115, 28, 7, 12, N'Márk', N'Nikházi', CAST(N'1989-02-02T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (116, 10, 11, 7, N'Ervin', N'Zsiga', CAST(N'1991-07-11T00:00:00.0000000' AS DateTime2), -1, -1, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (117, 5, 10, 11, N'Róbert', N'Litauszki', CAST(N'1990-03-15T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (118, 9, 6, 10, N'Miroslav', N'Grumic', CAST(N'1984-06-29T00:00:00.0000000' AS DateTime2), -1, -1, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (119, 19, 3, 9, N'Lajos', N'Hegedüs', CAST(N'1987-12-19T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (120, 10, 7, 7, N'Zsolt', N'Haraszti', CAST(N'1991-11-04T00:00:00.0000000' AS DateTime2), -1, 0, 225)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (121, 70, 4, 7, N'Kevin', N'Nagy', CAST(N'1995-09-11T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (122, 92, 6, 10, NULL, N'Myke', CAST(N'1992-10-30T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (123, 4, 2, 4, N'Stefan', N'Spirovski', CAST(N'1990-08-23T00:00:00.0000000' AS DateTime2), 0, -1, 600)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (124, 4, 11, 11, N'Adrián', N'Rus', CAST(N'1996-03-18T00:00:00.0000000' AS DateTime2), -1, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (125, 26, 7, 12, N'Lajos', N'Bertus', CAST(N'1990-09-26T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (126, 16, 2, 11, NULL, N'Leandro', CAST(N'1982-03-19T00:00:00.0000000' AS DateTime2), -1, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (127, 8, 4, 6, N'Dániel', N'Tőzsér', CAST(N'1985-05-12T00:00:00.0000000' AS DateTime2), -1, 0, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (128, 35, 6, 1, N'Predrag', N'Bosnjak', CAST(N'1985-11-13T00:00:00.0000000' AS DateTime2), -1, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (129, 14, 1, 10, N'Bálint', N'Gaál', CAST(N'1991-07-14T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (130, 17, 2, 12, N'Kornél', N'Csernik', CAST(N'1998-07-02T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (131, 16, 4, 10, N'Péter', N'Bíró', CAST(N'1997-07-04T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (132, 99, 4, 5, N'Bence', N'Sós', CAST(N'1994-05-10T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (133, 36, 5, 11, N'Botond', N'Baráth', CAST(N'1992-04-21T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (134, 98, 6, 12, N'Máté', N'Tóth', CAST(N'1998-06-20T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (135, 13, 1, 6, N'Zsombor', N'Berecz', CAST(N'1995-12-13T00:00:00.0000000' AS DateTime2), -1, 0, 800)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (136, 3, 8, 1, N'Dominik', N'Fótyik', CAST(N'1990-06-16T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (137, 23, 10, 9, N'Dávid', N'Banai', CAST(N'1994-05-09T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (138, 16, 8, 2, N'István', N'Csirmaz', CAST(N'1995-05-04T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (139, 90, 1, 9, N'Dániel', N'Póser', CAST(N'1990-01-12T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (140, 5, 9, 11, N'Zoltán', N'Lipták', CAST(N'1984-12-10T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (141, 79, 6, 5, N'Péter', N'Halmosi', CAST(N'1979-09-25T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (142, 30, 11, 5, N'Aladár', N'Virág', CAST(N'1983-02-19T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (143, 77, 7, 8, N'Dávid', N'Kulcsár', CAST(N'1988-02-25T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (144, 33, 12, 4, N'József', N'Varga', CAST(N'1988-06-06T00:00:00.0000000' AS DateTime2), -1, 0, 500)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (145, 49, 12, 3, N'Krisztián', N'Géresi', CAST(N'1994-06-14T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (146, 88, 11, 9, N'László', N'Horváth', CAST(N'1988-02-23T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (147, 70, 1, 13, N'Tamás', N'Kulcsár', CAST(N'1982-10-13T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (148, 26, 10, 12, N'Dániel', N'Nagy', CAST(N'1991-03-15T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (149, 1, 1, 9, N'Gergely', N'Nagy', CAST(N'1994-05-27T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (150, 13, 4, 1, N'Szabolcs', N'Barna', CAST(N'1996-04-27T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (151, 41, 8, 11, N'Attila', N'Szalai', CAST(N'1998-01-20T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (152, 12, 1, 10, N'Nikolaos', N'Vergos', CAST(N'1996-01-13T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (153, 13, 11, 6, N'Dávid', N'Sigér', CAST(N'1990-11-30T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (154, 7, 2, 11, N'Bence', N'Batik', CAST(N'1993-11-08T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (155, 23, 12, 11, N'Roland', N'Juhász', CAST(N'1983-07-01T00:00:00.0000000' AS DateTime2), -1, 0, 500)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (156, 21, 8, 12, N'Jakub', N'Brasen', CAST(N'1989-05-02T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (157, 24, 3, 11, N'Patrik', N'Poór', CAST(N'1993-11-25T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (158, 10, 9, 10, N'Roland', N'Ugrai', CAST(N'1992-11-13T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (159, 26, 8, 1, N'Dániel', N'Vadnai', CAST(N'1989-02-19T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (160, 7, 5, 10, N'Davide', N'Lanzafame', CAST(N'1987-02-09T00:00:00.0000000' AS DateTime2), 0, -1, 1200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (161, 7, 6, 10, N'Patrik', N'Pinte', CAST(N'1997-01-06T00:00:00.0000000' AS DateTime2), 0, -1, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (162, 27, 10, 4, N'Bence', N'Pávkovics', CAST(N'1997-03-27T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (163, 99, 12, 3, N'Asmir', N'Suljic', CAST(N'1991-09-11T00:00:00.0000000' AS DateTime2), -1, -1, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (164, 7, 11, 8, N'Yuri', N'Gabovda', CAST(N'1989-05-06T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (165, 11, 4, 5, N'János', N'Ferenczi', CAST(N'1991-04-03T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (166, 77, 5, 6, N'Gergő', N'Nagy', CAST(N'1993-01-07T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (167, 71, 3, 8, N'Attila', N'Osváth', CAST(N'1995-12-10T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (168, 33, 6, 11, N'Szilárd', N'Devecseri', CAST(N'1990-02-13T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (169, 32, 10, 9, N'Zoltán', N'Kovács', CAST(N'1984-10-29T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (170, 23, 6, 8, N'Szabolcs', N'Schimmer', CAST(N'1984-02-24T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (171, 49, 10, 2, N'Branko', N'Pauljevic', CAST(N'1989-06-12T00:00:00.0000000' AS DateTime2), -1, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (172, 23, 4, 13, N'Dániel', N'Bereczki', CAST(N'1995-06-02T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (173, 13, 8, 8, N'Pál', N'Lázár', CAST(N'1988-03-11T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (174, 23, 9, 1, N'Dávid', N'Forgács', CAST(N'1995-09-29T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (175, 8, 5, 8, N'Patrick', N'Ikenne-King', CAST(N'1991-10-29T00:00:00.0000000' AS DateTime2), 0, -1, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (176, 17, 11, 7, N'Máté', N'Schmid', CAST(N'1996-07-08T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (177, 44, 12, 10, N'Marko', N'Scepovic', CAST(N'1991-05-23T00:00:00.0000000' AS DateTime2), 0, -1, 1200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (178, 21, 12, 10, N'Ezekiel', N'Henty', CAST(N'1993-05-13T00:00:00.0000000' AS DateTime2), 0, -1, 1100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (179, 21, 4, 3, N'Kevin', N'Varga', CAST(N'1996-03-30T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (180, 4, 6, 1, N'Gábor', N'Jánvári', CAST(N'1990-04-25T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (181, 7, 12, 13, N'Danko', N'Lazovic', CAST(N'1983-05-17T00:00:00.0000000' AS DateTime2), 0, -1, 500)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (182, 15, 3, 4, N'Patrick', N'Mevoungou', CAST(N'1986-02-15T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (183, 23, 8, 4, N'Paul', N'Keita', CAST(N'1992-06-23T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (184, 98, 5, 10, N'Bálint', N'Tömösvári', CAST(N'1998-06-14T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (185, 87, 7, 9, N'István', N'Verpecz', CAST(N'1987-02-04T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (186, 5, 2, 1, N'Marcos', N'Pedroso', CAST(N'1993-10-04T00:00:00.0000000' AS DateTime2), 0, -1, 900)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (187, 20, 12, 11, N'Attila', N'Mocsi', CAST(N'2000-05-29T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (188, 99, 5, 9, N'Dávid', N'Gróf', CAST(N'1989-04-17T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (189, 14, 6, 7, N'Zoltán', N'Medgyes', CAST(N'1995-07-23T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (190, 5, 5, 10, N'Gergely', N'Bobál', CAST(N'1995-08-31T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (191, 21, 9, 4, N'Gergő', N'Kocsis', CAST(N'1994-03-07T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (192, 18, 12, 12, N'Bence', N'Szabó', CAST(N'1998-01-16T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (193, 6, 9, 2, N'Diego', N'Vela', CAST(N'1991-11-27T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (194, 24, 5, 4, N'Djordje', N'Kamber', CAST(N'1983-11-20T00:00:00.0000000' AS DateTime2), -1, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (195, 21, 5, 3, N'Ákos', N'Bíró', CAST(N'1998-04-25T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (196, 23, 3, 1, N'Csaba', N'Spandler', CAST(N'1996-03-07T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (197, 51, 2, 4, N'András', N'Csonka', CAST(N'2000-05-01T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (198, 8, 7, 6, N'Tamás', N'Kecskés', CAST(N'1986-01-15T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (199, 6, 10, 4, N'József', N'Windecker', CAST(N'1992-12-02T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (200, 8, 11, 10, N'Bachana', N'Arabuli', CAST(N'1994-01-05T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (201, 1, 8, 9, N'Dávid', N'Dombó', CAST(N'1993-02-26T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (202, 29, 11, 1, N'Áron', N'Schmid', CAST(N'1998-09-29T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (203, 27, 9, 10, N'Ákos', N'Szarka', CAST(N'1990-11-24T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (204, 6, 8, 1, N'Gergő', N'Gohér', CAST(N'1987-06-16T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (205, 1, 6, 9, N'Gábor', N'Király', CAST(N'1976-04-01T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (206, 2, 4, 11, N'Ákos', N'Kinyik', CAST(N'1993-05-12T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (207, 17, 1, 10, N'Evgen', N'Pavlov', CAST(N'1991-03-12T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (208, 19, 2, 4, N'Julian', N'Koch', CAST(N'1990-11-11T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (209, 21, 2, 8, N'Endre', N'Botka', CAST(N'1994-04-25T00:00:00.0000000' AS DateTime2), -1, 0, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (210, 10, 3, 13, N'András', N'Radó', CAST(N'1993-09-09T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (211, 98, 1, 6, N'Bálint', N'Vogyicska', CAST(N'1998-02-27T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (212, 6, 12, 1, N'András', N'Fejes', CAST(N'1988-08-26T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (213, 74, 9, 5, N'Patrik', N'Ternován', CAST(N'1997-06-10T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (214, 6, 1, 2, N'Donát', N'Szivacski', CAST(N'1997-01-18T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (215, 1, 12, 9, N'Tamás', N'Horváth', CAST(N'1987-06-18T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (216, 2, 10, 8, N'Kristóf', N'Szűcs', CAST(N'1997-01-03T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (217, 21, 7, 4, N'Kristóf', N'Papp', CAST(N'1993-05-14T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (218, 70, 6, 4, N'András', N'Jancsó', CAST(N'1996-04-22T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (219, 67, 11, 4, N'Irakli', N'Maisuradze', CAST(N'1988-08-22T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (220, 68, 3, 11, N'János', N'Hegedűs', CAST(N'1996-10-04T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (221, 4, 10, 11, N'Dávid', N'Kálnoki Kis', CAST(N'1991-08-06T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (222, 27, 3, 2, N'Liridon', N'Latifi', CAST(N'1994-02-06T00:00:00.0000000' AS DateTime2), 0, -1, 750)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (223, 37, 2, 1, N'Janek', N'Sternberg', CAST(N'1992-10-19T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (224, 29, 7, 2, N'Tamás', N'Koltai', CAST(N'1987-04-30T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (225, 15, 1, 11, N'Máté', N'Czingráber', CAST(N'1997-06-13T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (226, 99, 9, 9, N'Botond', N'Antal', CAST(N'1991-08-22T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (227, 15, 11, 11, N'Bence', N'Jagodics', CAST(N'1994-03-31T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (228, 7, 8, 12, N'Bence', N'Tóth', CAST(N'1989-07-22T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (229, 7, 3, 10, N'Márk', N'Szécsi', CAST(N'1994-05-22T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (230, 17, 5, 10, NULL, N'Danilo', CAST(N'1986-11-12T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (231, 11, 12, 8, N'Loïc', N'Nego', CAST(N'1991-01-15T00:00:00.0000000' AS DateTime2), 0, -1, 900)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (232, 25, 10, 3, N'Remzifaik', N'Selmani', CAST(N'1997-05-05T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (233, 8, 6, 3, N'Funsho', N'Bamgboye', CAST(N'1999-01-09T00:00:00.0000000' AS DateTime2), 0, -1, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (234, 81, 9, 11, N'Patrik', N'Ivánka', CAST(N'1998-08-25T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (235, 41, 11, 7, N'Ferenc', N'Rácz', CAST(N'1991-03-28T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (236, 10, 1, 12, N'Mohamed', N'Remili', CAST(N'1985-05-31T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (237, 29, 10, 4, N'Gergő', N'Németh', CAST(N'1999-03-03T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (238, 3, 12, 11, NULL, N'Vinícius', CAST(N'1990-02-21T00:00:00.0000000' AS DateTime2), -1, -1, 1000)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (239, 29, 4, 4, N'Erik', N'Kusnyír', CAST(N'2000-02-07T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (240, 30, 12, 8, N'Roland', N'Szolnoki', CAST(N'1992-01-21T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (241, 22, 9, 9, N'Ivan', N'Rados', CAST(N'1984-02-21T00:00:00.0000000' AS DateTime2), -1, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (242, 20, 7, 11, N'Péter', N'Zachán', CAST(N'1997-12-12T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (243, 2, 11, 9, N'Krisztián', N'Pogacsics', CAST(N'1985-10-17T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (244, 17, 7, 12, N'Dénes', N'Szakály', CAST(N'1988-03-15T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (245, 35, 10, 9, N'Bence', N'Gundel-Takács', CAST(N'1998-04-06T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (246, 77, 12, 8, N'Bendegúz', N'Bolla', CAST(N'1999-11-22T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (247, 8, 10, 6, N'Benjámin', N'Cseke', CAST(N'1994-07-22T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (248, 19, 8, 3, N'Márk', N'Koszta', CAST(N'1996-09-26T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (249, 19, 4, 7, N'Justin', N'Mengolo', CAST(N'1993-06-24T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (250, 12, 4, 9, N'Ján', N'Novota', CAST(N'1983-11-29T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (251, 25, 5, 11, N'Ivan', N'Lovric', CAST(N'1985-07-11T00:00:00.0000000' AS DateTime2), -1, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (252, 38, 7, 4, N'Ádám', N'Hajdú', CAST(N'1993-01-16T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (253, 46, 7, 4, N'Ádám', N'Simon', CAST(N'1990-03-30T00:00:00.0000000' AS DateTime2), -1, 0, 275)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (254, 19, 11, 3, N'Nemanja', N'Andric', CAST(N'1987-06-13T00:00:00.0000000' AS DateTime2), -1, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (255, 44, 6, 9, N'Márton', N'Gyurján', CAST(N'1995-05-01T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (256, 40, 2, 3, N'Moutari', N'Amadou', CAST(N'1994-01-19T00:00:00.0000000' AS DateTime2), 0, -1, 700)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (257, 80, 8, 4, N'Máté', N'Köböl', CAST(N'1992-04-14T00:00:00.0000000' AS DateTime2), 0, -1, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (258, 21, 10, 2, N'Benjámin', N'Balázs', CAST(N'1990-04-26T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (259, 9, 10, 10, N'Patrik', N'Tischler', CAST(N'1991-07-30T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (260, 27, 2, 6, N'Fernando', N'Gorriarán', CAST(N'1994-11-27T00:00:00.0000000' AS DateTime2), 0, -1, 1100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (261, 1, 4, 9, N'Oleksandr', N'Nad', CAST(N'1985-09-02T00:00:00.0000000' AS DateTime2), -1, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (262, 42, 6, 9, N'Gergely', N'Lévay', CAST(N'1993-08-15T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (263, 48, 9, 11, N'Dejan', N'Karan', CAST(N'1988-08-25T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (264, 55, 3, 12, N'Péter', N'Szakály', CAST(N'1986-08-17T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (265, 11, 11, 12, N'Carlo', N'Erdei', CAST(N'1996-03-22T00:00:00.0000000' AS DateTime2), -1, -1, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (266, 80, 3, 12, N'Márk', N'Madarász', CAST(N'1995-11-24T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (267, 15, 2, 12, N'Tamás', N'Hajnal', CAST(N'1981-03-15T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (268, 20, 4, 10, N'Tamás', N'Takács', CAST(N'1991-02-20T00:00:00.0000000' AS DateTime2), -1, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (269, 14, 9, 3, N'Zsolt', N'Óvári', CAST(N'1997-03-29T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (270, 28, 11, 8, N'Tibor', N'Bokros', CAST(N'1988-08-28T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (271, 51, 12, 9, N'András', N'Hársfalvi', CAST(N'1996-11-12T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (272, 33, 11, 1, N'Eke', N'Uzoma', CAST(N'1989-08-11T00:00:00.0000000' AS DateTime2), 0, -1, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (273, 25, 2, 11, N'Miha', N'Blazic', CAST(N'1993-05-08T00:00:00.0000000' AS DateTime2), 0, -1, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (274, 3, 4, 11, N'Csaba', N'Szatmári', CAST(N'1994-06-14T00:00:00.0000000' AS DateTime2), -1, 0, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (275, 32, 1, 11, N'Vit', N'Benes', CAST(N'1988-08-12T00:00:00.0000000' AS DateTime2), 0, -1, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (276, 8, 2, 7, N'Gergő', N'Lovrencsics', CAST(N'1988-09-01T00:00:00.0000000' AS DateTime2), -1, 0, 900)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (277, 18, 10, 4, N'Bojan', N'Sankovic', CAST(N'1993-11-21T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (278, 77, 3, 10, N'Antonio', N'Perosevic', CAST(N'1992-03-06T00:00:00.0000000' AS DateTime2), 0, -1, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (279, 22, 1, 11, N'Jan', N'Simunek', CAST(N'1987-02-20T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (280, 22, 4, 9, N'Péter', N'Kovács', CAST(N'2000-02-10T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (281, 11, 5, 10, N'Kadima', N'Kabangu', CAST(N'1993-06-15T00:00:00.0000000' AS DateTime2), 0, -1, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (282, 5, 11, 11, N'László', N'Tamás', CAST(N'1988-01-18T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (283, 24, 6, 12, N'Benjámin', N'Tóth', CAST(N'1995-01-24T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (284, 20, 2, 6, N'Zoltán', N'Gera', CAST(N'1979-04-22T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (285, 8, 8, 10, N'Roland', N'Baracskai', CAST(N'1992-04-11T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (286, 10, 6, 7, N'Karol', N'Mészáros', CAST(N'1993-07-25T00:00:00.0000000' AS DateTime2), 0, -1, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (287, 9, 11, 10, N'Ádám', N'Fekete', CAST(N'1988-01-22T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (288, 22, 8, 9, N'Martin', N'Krnac', CAST(N'1985-01-30T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (289, 97, 4, 9, N'István', N'Szabados', CAST(N'1997-11-08T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (290, 80, 6, 12, N'Balázs', N'Petró', CAST(N'1997-07-07T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (291, 3, 5, 1, N'Bence', N'Gergényi', CAST(N'1998-03-16T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (292, 38, 8, 10, N'Tomas', N'Majtan', CAST(N'1987-03-30T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (293, 19, 1, 11, N'Felix', N'Burmeister', CAST(N'1990-03-09T00:00:00.0000000' AS DateTime2), 0, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (294, 42, 2, 9, N'Ádám', N'Varga', CAST(N'1999-02-12T00:00:00.0000000' AS DateTime2), -1, 0, 75)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (295, 29, 6, 1, N'Milán', N'Németh', CAST(N'1988-05-29T00:00:00.0000000' AS DateTime2), -1, 0, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (296, 7, 9, 10, N'Gábor', N'Makrai', CAST(N'1996-06-26T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (297, 17, 4, 11, N'Norbert', N'Mészáros', CAST(N'1980-08-19T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (298, 15, 5, 11, N'Stefan', N'Deák', CAST(N'1991-03-23T00:00:00.0000000' AS DateTime2), -1, -1, 125)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (299, 57, 5, 3, N'Filip', N'Holender', CAST(N'1994-07-27T00:00:00.0000000' AS DateTime2), -1, -1, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (300, 21, 11, 4, N'Ante', N'Batarelo', CAST(N'1984-11-21T00:00:00.0000000' AS DateTime2), 0, -1, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (301, 27, 6, 4, N'Lóránt', N'Kovács', CAST(N'1993-06-06T00:00:00.0000000' AS DateTime2), -1, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (302, 27, 4, 2, N'Ádám', N'Bódi', CAST(N'1990-10-18T00:00:00.0000000' AS DateTime2), -1, 0, 400)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (303, 28, 1, 11, N'Tamás', N'Vaskó', CAST(N'1984-02-20T00:00:00.0000000' AS DateTime2), -1, 0, 250)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (304, 33, 9, 10, N'Nikolaos', N'Ioannidis', CAST(N'1994-04-26T00:00:00.0000000' AS DateTime2), 0, -1, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (305, 13, 3, 8, N'Ádám', N'Csilus', CAST(N'1996-11-18T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (306, 17, 3, 4, N'László', N'Zsidai', CAST(N'1986-07-16T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (307, 30, 3, 12, N'Josip', N'Knezevic', CAST(N'1988-10-03T00:00:00.0000000' AS DateTime2), 0, -1, 600)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (308, 4, 8, 4, N'Frano', N'Mlinar', CAST(N'1992-03-30T00:00:00.0000000' AS DateTime2), 0, -1, 350)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (309, 26, 6, 11, N'Márk', N'Jagodics', CAST(N'1992-04-10T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (310, 11, 3, 7, N'Dániel', N'Prosser', CAST(N'1994-06-15T00:00:00.0000000' AS DateTime2), -1, 0, 300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (311, 31, 7, 9, N'Gergő', N'Rácz', CAST(N'1995-11-20T00:00:00.0000000' AS DateTime2), -1, 0, 50)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (312, 6, 5, 6, N'Dániel', N'Gazdag', CAST(N'1996-03-02T00:00:00.0000000' AS DateTime2), -1, 0, 450)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (313, 9, 7, 10, N'János', N'Hahn', CAST(N'1995-05-15T00:00:00.0000000' AS DateTime2), -1, 0, 200)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (314, 22, 2, 11, N'Kenny', N'Otigba', CAST(N'1992-08-29T00:00:00.0000000' AS DateTime2), -1, -1, 1300)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (315, 88, 8, 11, N'Tamás', N'Szeles', CAST(N'1993-12-07T00:00:00.0000000' AS DateTime2), -1, 0, 150)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (316, 23, 5, 12, N'Bence', N'Banó-Szabó', CAST(N'1999-07-25T00:00:00.0000000' AS DateTime2), -1, 0, 100)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (317, 89, 5, 8, N'Balázs', N'Villám', CAST(N'1989-06-02T00:00:00.0000000' AS DateTime2), -1, 0, 175)
GO
INSERT [dbo].[labdarugo] ([id], [mezszam], [klubid], [posztid], [utonev], [vezeteknev], [szulido], [magyar], [kulfoldi], [ertek]) VALUES (318, 87, 1, 9, N'Lubos', N'Kamenar', CAST(N'1987-06-17T00:00:00.0000000' AS DateTime2), 0, -1, 250)
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (1, N'bal oldali védő')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (2, N'jobb oldali középpályás')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (3, N'bal szélső')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (4, N'védekező középpályás')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (5, N'bal oldali középpályás')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (6, N'belső középpályás')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (7, N'jobb szélső')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (8, N'jobb oldali védő')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (9, N'kapus')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (10, N'középcsatár')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (11, N'középső védő')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (12, N'támadó középpályás')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (13, N'hátravont csatár')
GO
INSERT [dbo].[poszt] ([id], [nev]) VALUES (14, N'jobboldali védő')
GO
ALTER TABLE [dbo].[labdarugo]  WITH CHECK ADD  CONSTRAINT [FK_labdarugo_klub] FOREIGN KEY([klubid])
REFERENCES [dbo].[klub] ([id])
GO
ALTER TABLE [dbo].[labdarugo] CHECK CONSTRAINT [FK_labdarugo_klub]
GO
ALTER TABLE [dbo].[labdarugo]  WITH CHECK ADD  CONSTRAINT [FK_labdarugo_poszt] FOREIGN KEY([posztid])
REFERENCES [dbo].[poszt] ([id])
GO
ALTER TABLE [dbo].[labdarugo] CHECK CONSTRAINT [FK_labdarugo_poszt]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "labdarugo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLabdarugoMez'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vLabdarugoMez'
GO
