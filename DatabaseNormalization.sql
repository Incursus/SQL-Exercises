--http://www.sql-join.com/

CREATE TABLE [dbo].[DenormalizedStudents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LectureName] [nvarchar](50) NOT NULL,
	[LectureDate] [nvarchar](50) NOT NULL,
	[DormName] [nvarchar](50) NOT NULL,
	[DormAddress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DenormalizedStudents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[NormalizedStudent](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DormId] [int] NOT NULL,
 CONSTRAINT [PK_NormalizedStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[NormalizedStudent]  WITH CHECK ADD  CONSTRAINT [FK_NormalizedStudent_NormalizedDorm] FOREIGN KEY([DormId])
REFERENCES [dbo].[NormalizedDorm] ([Id])
ALTER TABLE [dbo].[NormalizedStudent] CHECK CONSTRAINT [FK_NormalizedStudent_NormalizedDorm]

CREATE TABLE [dbo].[NormalizedSchedule](
	[Id] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
 CONSTRAINT [PK_NormalizedSchedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[NormalizedSchedule]  WITH CHECK ADD  CONSTRAINT [FK_NormalizedSchedule_NormalizedLecture] FOREIGN KEY([LectureId])
REFERENCES [dbo].[NormalizedLecture] ([Id])
ALTER TABLE [dbo].[NormalizedSchedule] CHECK CONSTRAINT [FK_NormalizedSchedule_NormalizedLecture]
ALTER TABLE [dbo].[NormalizedSchedule]  WITH CHECK ADD  CONSTRAINT [FK_NormalizedSchedule_NormalizedStudent] FOREIGN KEY([StudentId])
REFERENCES [dbo].[NormalizedStudent] ([Id])
ALTER TABLE [dbo].[NormalizedSchedule] CHECK CONSTRAINT [FK_NormalizedSchedule_NormalizedStudent]

CREATE TABLE [dbo].[NormalizedLecture](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NormalizedLecture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[NormalizedDorm](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NormalizedDorm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]