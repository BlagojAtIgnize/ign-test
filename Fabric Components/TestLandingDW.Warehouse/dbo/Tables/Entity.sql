CREATE TABLE [dbo].[Entity] (

	[Id] int NULL, 
	[Name] varchar(200) NULL, 
	[SourceConnectionId] int NULL, 
	[DestinationConnectionId] int NULL, 
	[Query] varchar(3000) NULL, 
	[LoadType] varchar(20) NULL, 
	[IncrementalColumn] varchar(100) NULL, 
	[IncrementalColumnType] varchar(20) NULL, 
	[IsActive] bit NULL, 
	[CreatedDate] datetime2(6) NULL, 
	[CreatedByUser] varchar(8000) NULL
);