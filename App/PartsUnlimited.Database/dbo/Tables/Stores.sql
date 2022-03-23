CREATE TABLE [dbo].[Stores] (
    [StoreId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Stores] PRIMARY KEY CLUSTERED ([StoreId] ASC)
);

