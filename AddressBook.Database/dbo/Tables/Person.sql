CREATE TABLE [dbo].[Person] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50)  NOT NULL,
    [LastName]     VARCHAR (50)  NOT NULL,
    [MiddleName]   VARCHAR (50)  NULL,
    [EmailAddress] VARCHAR (250) NOT NULL,
    [AddressId]    INT           NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Person_Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id])
);

