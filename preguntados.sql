 
CREATE TABLE [dbo].[PRE_Historial](
	[IDHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[IDCategoria] [int] NOT NULL,
	[Correcta] [bit] NOT NULL,
 CONSTRAINT [PK_PRE_Historial] PRIMARY KEY CLUSTERED 
(
	[IDHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PRE_Partida](
	[IDPartida] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario1] [int] NOT NULL,
	[IDUsuario2] [int] NOT NULL,
	[Turno] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Ronda] [int] NOT NULL,
	[PreguntasCorrectas1] [int] NOT NULL,
	[Personajes1] [int] NOT NULL,
	[PreguntasCorrectas2] [int] NOT NULL,
	[Personajes2] [int] NOT NULL,
 CONSTRAINT [PK_PRE_Partida] PRIMARY KEY CLUSTERED 
(
	[IDPartida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PRE_PartidaDetalle](
	[IDPartidaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IDPartida] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[IDCategoria] [int] NOT NULL,
 CONSTRAINT [PK_PRE_PartidaDetalle] PRIMARY KEY CLUSTERED 
(
	[IDPartidaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[PRE_Usuario](
	[IDUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Usuario] [nvarchar](10) NOT NULL,
	[Clave] [nvarchar](10) NOT NULL,
	[PartidasGanadas] [int] NOT NULL,
	[PartidasPerdidas] [int] NOT NULL,
 CONSTRAINT [PK_PRE_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[PRE_Categoria] ON 

INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (1, N'Historia')
INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (2, N'Arte')
INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (3, N'Entretenimiento')
INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (4, N'Deporte')
INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (5, N'Ciencia')
INSERT [dbo].[PRE_Categoria] ([IDCategoria], [Descripcion]) VALUES (6, N'Geografía')
SET IDENTITY_INSERT [dbo].[PRE_Categoria] OFF
SET IDENTITY_INSERT [dbo].[PRE_Pregunta] ON 

INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1], [Respuesta2],
 [Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
 VALUES (1, N'Quien escribio 100 años de soledad', 2, N'Juan rulfo', N'Nelson Mandela',
  N'Gabriel Garcia Marquez', N'Julio Cortazar', 3, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria],
 [Respuesta1], [Respuesta2], [Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
 VALUES (2, N'En que año se descubrio america', 1, N'1592', N'1492', N'1494', N'1394', 2, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1],
 [Respuesta2], [Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
 VALUES (3, N'A quien le dicen la toti', 3, N'Sofia Vergara', N'La Chicholina', N'Shakira', N'Celia Cruz', 1, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1],
 [Respuesta2], [Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
 VALUES (4, N'A quien le dicen CR7 ', 4, N'Messi', N'Hammer Rodriguez', N'Maradona', N'Cristiano Ronaldo', 4, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1], 
[Respuesta2], [Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
VALUES (5, N'La memoria volatil de un PC es', 5, N'ROM', N'HD', N'USB', N'RAM', 4, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1], [Respuesta2], 
[Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) V
ALUES (6, N'El rio mas largo del mundo es', 6, N'El Nilo', N'El Volga', N'El Amazonas', N'El Magdalena', 3, 1)
INSERT [dbo].[PRE_Pregunta] ([IDPregunta], [Pregunta], [IDCategoria], [Respuesta1], [Respuesta2], 
[Respuesta3], [Respuesta4], [Correcta], [IDUsuario]) 
VALUES (7, N'En binario cuando es 1 + 1', 5, N'11', N'01', N'10', N'100', 3, 1)
SET IDENTITY_INSERT [dbo].[PRE_Pregunta] OFF
SET IDENTITY_INSERT [dbo].[PRE_Usuario] ON 

INSERT [dbo].[PRE_Usuario] ([IDUsuario], [Nombres], [Apellidos], [Usuario], [Clave], [PartidasGanadas], 
[PartidasPerdidas]) VALUES (1, N'Starling', N'Germosen', N'sgermosen', N'123', 0, 0)
INSERT [dbo].[PRE_Usuario] ([IDUsuario], [Nombres], [Apellidos], [Usuario], [Clave], [PartidasGanadas], 
[PartidasPerdidas]) VALUES (2, N'Juan', N'Zuluaga', N'zulu', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[PRE_Usuario] OFF
SET ANSI_PADDING ON
