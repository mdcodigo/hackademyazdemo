CREATE TABLE [dbo].[OrderDetails] (
    [OrderDetailId] INT             IDENTITY (1, 1) NOT NULL,
    [OrderId]       INT             NOT NULL,
    [ProductId]     INT             NOT NULL,
    [Count]         INT             NOT NULL,
    [UnitPrice]     DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED ([OrderDetailId] ASC),
    CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderId]
    ON [dbo].[OrderDetails]([OrderId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ProductId]
    ON [dbo].[OrderDetails]([ProductId] ASC);

