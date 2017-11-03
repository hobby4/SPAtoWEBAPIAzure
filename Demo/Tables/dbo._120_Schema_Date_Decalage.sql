SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[_120_Schema_Date_Decalage] (
		[Schema_Date_DecalageID]     [int] IDENTITY(1, 1) NOT NULL,
		[Date_Reference]             [date] NULL,
		[Date_Decalee]               [date] NULL,
		CONSTRAINT [Pk__120_Schema_Date_Decalage]
		PRIMARY KEY
		CLUSTERED
		([Schema_Date_DecalageID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_120_Schema_Date_Decalage] SET (LOCK_ESCALATION = TABLE)
GO
