SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_200_Table_Test_1] (
		[PK1]                 [int] IDENTITY(1, 1) NOT NULL,
		[String_Field1]       [nvarchar](255) COLLATE French_CI_AS NULL,
		[StringField2]        [nvarchar](max) COLLATE French_CI_AS NULL,
		[Integer_Field1]      [nvarchar](max) COLLATE French_CI_AS NULL,
		[Date_Field1]         [date] NULL,
		[DateTime_Field1]     [datetime2](7) NULL,
		CONSTRAINT [Pk__200_Table_Test_1]
		PRIMARY KEY
		CLUSTERED
		([PK1])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[_200_Table_Test_1] SET (LOCK_ESCALATION = TABLE)
GO
