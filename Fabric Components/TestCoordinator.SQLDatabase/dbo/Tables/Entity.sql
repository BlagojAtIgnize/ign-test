CREATE TABLE [dbo].[Entity] (
    [Id]                      INT            IDENTITY (1, 1) NOT NULL,
    [Name]                    VARCHAR (200)  NOT NULL,
    [SourceConnectionId]      INT            NOT NULL,
    [DestinationConnectionId] INT            NOT NULL,
    [Query]                   VARCHAR (3000) NULL,
    [LoadType]                VARCHAR (20)   DEFAULT ('Full') NOT NULL,
    [IncrementalColumn]       VARCHAR (100)  NULL,
    [IncrementalColumnType]   VARCHAR (20)   NULL,
    [IsActive]                BIT            DEFAULT ((1)) NOT NULL,
    [CreatedDate]             DATETIME2 (7)  DEFAULT (sysdatetime()) NOT NULL,
    [CreatedByUser]           NVARCHAR (128) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([IncrementalColumnType]='DateTime' OR [IncrementalColumnType]='Numeric'),
    CHECK ([LoadType]='Incremental' OR [LoadType]='Full')
);


GO

