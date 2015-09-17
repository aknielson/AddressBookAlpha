CREATE TABLE [dbo].[Phone] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [PhoneNumber] VARCHAR (50) NOT NULL,
    [PhoneTypeId] INT          NOT NULL,
    [PersonId]    INT          NOT NULL,
    CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Phone_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([Id]),
    CONSTRAINT [FK_Phone_PhoneType] FOREIGN KEY ([PhoneTypeId]) REFERENCES [dbo].[PhoneType] ([Id])
);

