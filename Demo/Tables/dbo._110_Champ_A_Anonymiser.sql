SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_110_Champ_A_Anonymiser] (
		[ChampID]                [int] IDENTITY(1, 1) NOT NULL,
		[Nom_Champ]              [nvarchar](255) COLLATE French_CI_AS NULL,
		[Texte_Remplacement]     [varchar](250) COLLATE French_CI_AS NULL,
		[TableID]                [int] NULL,
		CONSTRAINT [Pk__110_Champ_A_Anonymiser]
		PRIMARY KEY
		CLUSTERED
		([ChampID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_110_Champ_A_Anonymiser]
	WITH CHECK
	ADD CONSTRAINT [fk__110_Champ_A_Anonymiser]
	FOREIGN KEY ([TableID]) REFERENCES [dbo].[_100_Table_A_Anonymiser] ([TableID])
ALTER TABLE [dbo].[_110_Champ_A_Anonymiser]
	CHECK CONSTRAINT [fk__110_Champ_A_Anonymiser]

GO
CREATE NONCLUSTERED INDEX [idx__110_Champ_A_Anonymiser]
	ON [dbo].[_110_Champ_A_Anonymiser] ([TableID])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[_110_Champ_A_Anonymiser] SET (LOCK_ESCALATION = TABLE)
GO
