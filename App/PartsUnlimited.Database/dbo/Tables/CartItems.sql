CREATE TABLE [dbo].[CartItems] (
    [CartItemId]  INT            IDENTITY (1, 1) NOT NULL,
    [CartId]      NVARCHAR (MAX) NOT NULL,
    [ProductId]   INT            NOT NULL,
    [Count]       INT            NOT NULL,
    [DateCreated] DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.CartItems] PRIMARY KEY CLUSTERED ([CartItemId] ASC),
    CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ProductId]
    ON [dbo].[CartItems]([ProductId] ASC);

