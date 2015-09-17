CREATE TABLE [dbo].[Address] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Street1]    VARCHAR (250) NOT NULL,
    [Street2]    VARCHAR (250) NULL,
    [City]       VARCHAR (250) NOT NULL,
    [State]      VARCHAR (50)  NOT NULL,
    [PostalCode] VARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC)
);

