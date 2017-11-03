SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_100_Table_A_Anonymiser] (
		[Nom_Table]     [nvarchar](255) COLLATE French_CI_AS NULL,
		[TableID]       [int] IDENTITY(1, 1) NOT NULL,
		CONSTRAINT [Pk__100_Table_A_Anonymiser]
		PRIMARY KEY
		CLUSTERED
		([TableID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_100_Table_A_Anonymiser] SET (LOCK_ESCALATION = TABLE)
GO
