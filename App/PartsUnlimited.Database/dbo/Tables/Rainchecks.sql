CREATE TABLE [dbo].[Rainchecks] (
    [RaincheckId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [ProductId]   INT            NOT NULL,
    [Count]       INT            NOT NULL,
    [SalePrice]   FLOAT (53)     NOT NULL,
    [StoreId]     INT            NOT NULL,
    CONSTRAINT [PK_dbo.Rainchecks] PRIMARY KEY CLUSTERED ([RaincheckId] ASC),
    CONSTRAINT [FK_dbo.Rainchecks_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Rainchecks_dbo.Stores_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Stores] ([StoreId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductId]
    ON [dbo].[Rainchecks]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_StoreId]
    ON [dbo].[Rainchecks]([StoreId] ASC);

