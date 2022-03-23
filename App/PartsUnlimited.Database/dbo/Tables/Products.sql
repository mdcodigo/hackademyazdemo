CREATE TABLE [dbo].[Products] (
    [ProductId]        INT             IDENTITY (1, 1) NOT NULL,
    [SkuNumber]        NVARCHAR (MAX)  NOT NULL,
    [CategoryId]       INT             NOT NULL,
    [RecommendationId] INT             NOT NULL,
    [Title]            NVARCHAR (160)  NOT NULL,
    [Price]            DECIMAL (18, 2) NOT NULL,
    [SalePrice]        DECIMAL (18, 2) NOT NULL,
    [ProductArtUrl]    NVARCHAR (1024) NULL,
    [Description]      NVARCHAR (MAX)  NOT NULL,
    [Created]          DATETIME        NOT NULL,
    [ProductDetails]   NVARCHAR (MAX)  NOT NULL,
    [Inventory]        INT             NOT NULL,
    [LeadTime]         INT             NOT NULL,
    CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CategoryId]
    ON [dbo].[Products]([CategoryId] ASC);

