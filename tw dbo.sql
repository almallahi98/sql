/*
 Navicat Premium Data Transfer

 Source Server         : sql2019
 Source Server Type    : SQL Server
 Source Server Version : 15002095
 Source Host           : SATELLITE\MSSQLSERVER01:1433
 Source Catalog        : Tawtini
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002095
 File Encoding         : 65001

 Date: 24/10/2022 21:40:27
*/


-- ----------------------------
-- Table structure for Certification
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Certification]') AND type IN ('U'))
	DROP TABLE [dbo].[Certification]
GO

CREATE TABLE [dbo].[Certification] (
  [SerId] int  IDENTITY(1,1) NOT NULL,
  [SerDate] date  NOT NULL,
  [SerFrom] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [SerShow] bit  NOT NULL,
  [CvId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Certification] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Contact
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type IN ('U'))
	DROP TABLE [dbo].[Contact]
GO

CREATE TABLE [dbo].[Contact] (
  [ContId] int  IDENTITY(1,1) NOT NULL,
  [ContactType] varchar(20) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [ContactData] varchar(20) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [Selected] bit  NOT NULL,
  [ProfId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Contact] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CvData
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CvData]') AND type IN ('U'))
	DROP TABLE [dbo].[CvData]
GO

CREATE TABLE [dbo].[CvData] (
  [CvId] int  IDENTITY(1,1) NOT NULL,
  [active] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [Updated] datetime  NOT NULL,
  [ProfId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CvData] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for CvLink
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CvLink]') AND type IN ('U'))
	DROP TABLE [dbo].[CvLink]
GO

CREATE TABLE [dbo].[CvLink] (
  [CvIdLink] int  NOT NULL,
  [CvTitle] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [CvLink] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [CvSelected] bit  NOT NULL,
  [CvId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CvLink] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Edu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Edu]') AND type IN ('U'))
	DROP TABLE [dbo].[Edu]
GO

CREATE TABLE [dbo].[Edu] (
  [EduId] int  IDENTITY(1,1) NOT NULL,
  [EduMagor] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [EduFrom] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [EduEnd] date  NOT NULL,
  [EduCertificat] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [EduDeleted] bit  NOT NULL,
  [CvId] int  NOT NULL,
  [idMajor] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Edu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Hopys
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Hopys]') AND type IN ('U'))
	DROP TABLE [dbo].[Hopys]
GO

CREATE TABLE [dbo].[Hopys] (
  [HopId] int  IDENTITY(1,1) NOT NULL,
  [data] varchar(50) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [Selected] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [CvId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Hopys] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ImplomentHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ImplomentHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[ImplomentHistory]
GO

CREATE TABLE [dbo].[ImplomentHistory] (
  [EmpId] int  IDENTITY(1,1) NOT NULL,
  [EmpStart] date  NOT NULL,
  [EmpEnd] date  NOT NULL,
  [EmpRoll] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [EmpAt] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [CvIdRef] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ImplomentHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for JobMany
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[JobMany]') AND type IN ('U'))
	DROP TABLE [dbo].[JobMany]
GO

CREATE TABLE [dbo].[JobMany] (
  [IdMany] int  IDENTITY(1,1) NOT NULL,
  [MajId] int  NOT NULL,
  [JobId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[JobMany] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Jobs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Jobs]') AND type IN ('U'))
	DROP TABLE [dbo].[Jobs]
GO

CREATE TABLE [dbo].[Jobs] (
  [JobId] int  IDENTITY(1,1) NOT NULL,
  [JobTitle] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [JobLocation] varchar(50) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [UserID] int  NOT NULL,
  [JobRequirment] varchar(1000) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [ContId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Jobs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Langushs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Langushs]') AND type IN ('U'))
	DROP TABLE [dbo].[Langushs]
GO

CREATE TABLE [dbo].[Langushs] (
  [LangId] int  IDENTITY(1,1) NOT NULL,
  [LangData] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [LangLevel] varchar(50) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [LangShow] bit  NOT NULL,
  [CvId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Langushs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Majors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Majors]') AND type IN ('U'))
	DROP TABLE [dbo].[Majors]
GO

CREATE TABLE [dbo].[Majors] (
  [MagId] int  IDENTITY(1,1) NOT NULL,
  [MajorType] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [MajorFeald] nvarchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL
)
GO

ALTER TABLE [dbo].[Majors] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Objectives
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Objectives]') AND type IN ('U'))
	DROP TABLE [dbo].[Objectives]
GO

CREATE TABLE [dbo].[Objectives] (
  [ObId] int  IDENTITY(1,1) NOT NULL,
  [Data] varchar(1000) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [SelectedOb] bit  NOT NULL,
  [CvId] int  NOT NULL,
  [Deleted] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Objectives] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Profile
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Profile]') AND type IN ('U'))
	DROP TABLE [dbo].[Profile]
GO

CREATE TABLE [dbo].[Profile] (
  [PofId] int  IDENTITY(1,1) NOT NULL,
  [FName] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NULL,
  [MName] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NULL,
  [LName] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NULL,
  [Ginder] varchar(255) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NULL,
  [BirthDay] datetime  NULL,
  [IdUser] int  NULL
)
GO

ALTER TABLE [dbo].[Profile] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Skills
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Skills]') AND type IN ('U'))
	DROP TABLE [dbo].[Skills]
GO

CREATE TABLE [dbo].[Skills] (
  [SkillsId] int  IDENTITY(1,1) NOT NULL,
  [data] varchar(50) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [Selected] bit  NOT NULL,
  [Deleted] bit  NOT NULL,
  [CvId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Skills] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TypeUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TypeUser]') AND type IN ('U'))
	DROP TABLE [dbo].[TypeUser]
GO

CREATE TABLE [dbo].[TypeUser] (
  [TypeId] int  IDENTITY(1,1) NOT NULL,
  [TypeName] varchar(100) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [AddRemove] bit  NULL,
  [AbroveUser] bit  NULL,
  [AddJob] bit  NULL,
  [RemoveJobs] bit  NULL
)
GO

ALTER TABLE [dbo].[TypeUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for UserList
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserList]') AND type IN ('U'))
	DROP TABLE [dbo].[UserList]
GO

CREATE TABLE [dbo].[UserList] (
  [UserID] int  IDENTITY(1,1) NOT NULL,
  [UserName] varchar(12) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [PassWord] varchar(8) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NOT NULL,
  [TypeId] int  NULL,
  [Active] bit  NOT NULL,
  [userToken] varchar(16) COLLATE Latin1_General_100_CI_AI_KS_SC_UTF8  NULL
)
GO

ALTER TABLE [dbo].[UserList] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for Certification
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Certification]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Certification
-- ----------------------------
ALTER TABLE [dbo].[Certification] ADD CONSTRAINT [PK__Certific__79839DAFC3B18719] PRIMARY KEY CLUSTERED ([SerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Contact
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Contact]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Contact
-- ----------------------------
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK__Contact__F03BCF993FAA12DF] PRIMARY KEY CLUSTERED ([ContId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CvData
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CvData]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table CvData
-- ----------------------------
ALTER TABLE [dbo].[CvData] ADD CONSTRAINT [PK__CvData__4FB51779246F3977] PRIMARY KEY CLUSTERED ([CvId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table CvLink
-- ----------------------------
ALTER TABLE [dbo].[CvLink] ADD CONSTRAINT [PK__CvLink__B361A5DBDDCD3B62] PRIMARY KEY CLUSTERED ([CvIdLink])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Edu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Edu]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Edu
-- ----------------------------
ALTER TABLE [dbo].[Edu] ADD CONSTRAINT [PK__Edu__1FD9490E95E2B7D6] PRIMARY KEY CLUSTERED ([EduId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Hopys
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Hopys]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Hopys
-- ----------------------------
ALTER TABLE [dbo].[Hopys] ADD CONSTRAINT [PK__Hopys__400085403C213E12] PRIMARY KEY CLUSTERED ([HopId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ImplomentHistory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ImplomentHistory]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table ImplomentHistory
-- ----------------------------
ALTER TABLE [dbo].[ImplomentHistory] ADD CONSTRAINT [PK__Implomen__AF2DBB9944604A03] PRIMARY KEY CLUSTERED ([EmpId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for JobMany
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[JobMany]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table JobMany
-- ----------------------------
ALTER TABLE [dbo].[JobMany] ADD CONSTRAINT [PK__JobMany__4E6659EBFB4B9184] PRIMARY KEY CLUSTERED ([IdMany])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Jobs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Jobs]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Jobs
-- ----------------------------
ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [PK__Jobs__056690C2862DDFEC] PRIMARY KEY CLUSTERED ([JobId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Langushs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Langushs]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Langushs
-- ----------------------------
ALTER TABLE [dbo].[Langushs] ADD CONSTRAINT [PK__Langushs__A5F312DEB68A7FCA] PRIMARY KEY CLUSTERED ([LangId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Majors
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Majors]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Majors
-- ----------------------------
ALTER TABLE [dbo].[Majors] ADD CONSTRAINT [PK__Majors__34504C53FD377E8A] PRIMARY KEY CLUSTERED ([MagId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Objectives
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Objectives]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Objectives
-- ----------------------------
ALTER TABLE [dbo].[Objectives] ADD CONSTRAINT [PK__Objectiv__446B6271F39EFFAD] PRIMARY KEY CLUSTERED ([ObId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Profile
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Profile]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Profile
-- ----------------------------
ALTER TABLE [dbo].[Profile] ADD CONSTRAINT [PK__Profile__68790EEC2C3F3F6F] PRIMARY KEY CLUSTERED ([PofId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Skills
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Skills]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Skills
-- ----------------------------
ALTER TABLE [dbo].[Skills] ADD CONSTRAINT [PK__Skills__95A17ED512C2F7DD] PRIMARY KEY CLUSTERED ([SkillsId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TypeUser
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TypeUser]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table TypeUser
-- ----------------------------
ALTER TABLE [dbo].[TypeUser] ADD CONSTRAINT [PK__TypeUser__516F03B55BAE41E5] PRIMARY KEY CLUSTERED ([TypeId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserList
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UserList]', RESEED, 8)
GO


-- ----------------------------
-- Uniques structure for table UserList
-- ----------------------------
ALTER TABLE [dbo].[UserList] ADD CONSTRAINT [UQ__UserList__C9F284561CC22462] UNIQUE NONCLUSTERED ([UserName] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table UserList
-- ----------------------------
ALTER TABLE [dbo].[UserList] ADD CONSTRAINT [PK__UserList__1788CCACB2970FAC] PRIMARY KEY CLUSTERED ([UserID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Certification
-- ----------------------------
ALTER TABLE [dbo].[Certification] ADD CONSTRAINT [fk_Certification_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Contact
-- ----------------------------
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [fk_Contact_Profile_1] FOREIGN KEY ([ProfId]) REFERENCES [dbo].[Profile] ([PofId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CvData
-- ----------------------------
ALTER TABLE [dbo].[CvData] ADD CONSTRAINT [fk_CvData_Profile_1] FOREIGN KEY ([ProfId]) REFERENCES [dbo].[Profile] ([PofId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CvLink
-- ----------------------------
ALTER TABLE [dbo].[CvLink] ADD CONSTRAINT [fk_CvLink_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Edu
-- ----------------------------
ALTER TABLE [dbo].[Edu] ADD CONSTRAINT [fk_Edu_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Edu] ADD CONSTRAINT [fk_Edu_Majors_1] FOREIGN KEY ([idMajor]) REFERENCES [dbo].[Majors] ([MagId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Hopys
-- ----------------------------
ALTER TABLE [dbo].[Hopys] ADD CONSTRAINT [fk_Hopys_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ImplomentHistory
-- ----------------------------
ALTER TABLE [dbo].[ImplomentHistory] ADD CONSTRAINT [fk_ImplomentH_CvData_1] FOREIGN KEY ([CvIdRef]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table JobMany
-- ----------------------------
ALTER TABLE [dbo].[JobMany] ADD CONSTRAINT [fk_JobMany_Majors_1] FOREIGN KEY ([MajId]) REFERENCES [dbo].[Majors] ([MagId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[JobMany] ADD CONSTRAINT [fk_JobMany_Jobs_1] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Jobs] ([JobId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Jobs
-- ----------------------------
ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [fk_Jobs_UserList_1] FOREIGN KEY ([UserID]) REFERENCES [dbo].[UserList] ([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [fk_Jobs_Contact_1] FOREIGN KEY ([ContId]) REFERENCES [dbo].[Contact] ([ContId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Langushs
-- ----------------------------
ALTER TABLE [dbo].[Langushs] ADD CONSTRAINT [fk_Langushs_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Objectives
-- ----------------------------
ALTER TABLE [dbo].[Objectives] ADD CONSTRAINT [fk_Objectives_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Profile
-- ----------------------------
ALTER TABLE [dbo].[Profile] ADD CONSTRAINT [fk_Profile_UserList_1] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[UserList] ([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Skills
-- ----------------------------
ALTER TABLE [dbo].[Skills] ADD CONSTRAINT [fk_Skills_CvData_1] FOREIGN KEY ([CvId]) REFERENCES [dbo].[CvData] ([CvId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserList
-- ----------------------------
ALTER TABLE [dbo].[UserList] ADD CONSTRAINT [fk_UserList_TypeUser_1] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[TypeUser] ([TypeId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

