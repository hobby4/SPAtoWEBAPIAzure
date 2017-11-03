SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_130_Date_A_Decaler] (
		[ChampID]                    [int] IDENTITY(1, 1) NOT NULL,
		[Nom_Champ]                  [nvarchar](255) COLLATE French_CI_AS NULL,
		[Schema_Date_DecalageID]     [int] NULL,
		CONSTRAINT [Pk__130_Date_A_Decaler]
		PRIMARY KEY
		CLUSTERED
		([ChampID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_130_Date_A_Decaler]
	WITH CHECK
	ADD CONSTRAINT [fk__130_Date_A_Decaler]
	FOREIGN KEY ([Schema_Date_DecalageID]) REFERENCES [dbo].[_120_Schema_Date_Decalage] ([Schema_Date_DecalageID])
ALTER TABLE [dbo].[_130_Date_A_Decaler]
	CHECK CONSTRAINT [fk__130_Date_A_Decaler]

GO
CREATE NONCLUSTERED INDEX [idx__130_Date_A_Decaler]
	ON [dbo].[_130_Date_A_Decaler] ([Schema_Date_DecalageID])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[_130_Date_A_Decaler] SET (LOCK_ESCALATION = TABLE)
GO
