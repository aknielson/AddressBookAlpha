CREATE TABLE [dbo].[PhoneType] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [Description] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

