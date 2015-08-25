
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/19/2007 00:41:02
-- Generated from EDMX file: H:\zlzuche\svn\trunk\ZLzuche\ZLzuche\Model\ZLzucheEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ZLzuche];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Car_CarType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Car] DROP CONSTRAINT [FK_Car_CarType];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Car]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Car];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customer];
GO
IF OBJECT_ID(N'[dbo].[FK_Shop_Car]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Car] DROP CONSTRAINT [FK_Shop_Car];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BasicData]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BasicData];
GO
IF OBJECT_ID(N'[dbo].[Car]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Car];
GO
IF OBJECT_ID(N'[dbo].[CarType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarType];
GO
IF OBJECT_ID(N'[dbo].[Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer];
GO
IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[Shop]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Shop];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BasicData'
CREATE TABLE [dbo].[BasicData] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Key] nvarchar(50)  NOT NULL,
    [Value] nvarchar(50)  NOT NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- Creating table 'Car'
CREATE TABLE [dbo].[Car] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ShopId] int  NOT NULL,
    [CarTypeId] int  NULL,
    [CarName] nvarchar(50)  NULL,
    [CarModel] nvarchar(50)  NULL,
    [BasicInsure] nvarchar(50)  NULL,
    [PreAuthorization] nvarchar(50)  NULL,
    [Price] nvarchar(50)  NULL,
    [IsMileage] nvarchar(50)  NULL,
    [Status] nvarchar(50)  NULL,
    [Describe] nvarchar(4000)  NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- Creating table 'CarType'
CREATE TABLE [dbo].[CarType] (
    [ID] int  NOT NULL,
    [CarTypeName] nvarchar(50)  NULL,
    [Describe] nvarchar(4000)  NOT NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- Creating table 'Customer'
CREATE TABLE [dbo].[Customer] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [LoginID] nvarchar(50)  NULL,
    [Password] nvarchar(50)  NULL,
    [CustomerName] nvarchar(50)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Email] nvarchar(50)  NULL,
    [PapersType] nvarchar(50)  NULL,
    [PapersNumber] nvarchar(50)  NULL,
    [RegisterTime] datetime  NULL,
    [LastUpdateTime] nvarchar(50)  NULL,
    [LastIpAddress] nvarchar(50)  NULL,
    [IsDelete] nvarchar(50)  NULL,
    [Status] nvarchar(50)  NULL,
    [Remark] nvarchar(50)  NULL
);
GO

-- Creating table 'Employee'
CREATE TABLE [dbo].[Employee] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [LoginID] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [EmployeeName] nvarchar(50)  NOT NULL,
    [Phone] nvarchar(50)  NULL,
    [Email] nvarchar(50)  NULL,
    [CreateTime] nvarchar(50)  NULL,
    [LastUpdateTime] nvarchar(50)  NULL,
    [LastIpAddress] nvarchar(50)  NULL,
    [Describe] nvarchar(4000)  NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CustomerID] int  NOT NULL,
    [OrderType] nvarchar(50)  NULL,
    [GetCarTime] datetime  NULL,
    [ReturnCarTime] datetime  NULL,
    [HireDays] nvarchar(50)  NULL,
    [Deposit] nvarchar(50)  NULL,
    [CarID] int  NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- Creating table 'Shop'
CREATE TABLE [dbo].[Shop] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Province] nvarchar(50)  NULL,
    [City] nvarchar(50)  NULL,
    [Area] nvarchar(50)  NULL,
    [Tel] nvarchar(50)  NULL,
    [Address] nvarchar(500)  NULL,
    [Describe] nvarchar(4000)  NULL,
    [Remark] nvarchar(4000)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'BasicData'
ALTER TABLE [dbo].[BasicData]
ADD CONSTRAINT [PK_BasicData]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Car'
ALTER TABLE [dbo].[Car]
ADD CONSTRAINT [PK_Car]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CarType'
ALTER TABLE [dbo].[CarType]
ADD CONSTRAINT [PK_CarType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Customer'
ALTER TABLE [dbo].[Customer]
ADD CONSTRAINT [PK_Customer]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Employee'
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [PK_Employee]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Shop'
ALTER TABLE [dbo].[Shop]
ADD CONSTRAINT [PK_Shop]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CarTypeId] in table 'Car'
ALTER TABLE [dbo].[Car]
ADD CONSTRAINT [FK_Car_CarType]
    FOREIGN KEY ([CarTypeId])
    REFERENCES [dbo].[CarType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Car_CarType'
CREATE INDEX [IX_FK_Car_CarType]
ON [dbo].[Car]
    ([CarTypeId]);
GO

-- Creating foreign key on [CarID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Car]
    FOREIGN KEY ([CarID])
    REFERENCES [dbo].[Car]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Car'
CREATE INDEX [IX_FK_Orders_Car]
ON [dbo].[Orders]
    ([CarID]);
GO

-- Creating foreign key on [ShopId] in table 'Car'
ALTER TABLE [dbo].[Car]
ADD CONSTRAINT [FK_Shop_Car]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Shop]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Shop_Car'
CREATE INDEX [IX_FK_Shop_Car]
ON [dbo].[Car]
    ([ShopId]);
GO

-- Creating foreign key on [CustomerID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Customer]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customer]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Customer'
CREATE INDEX [IX_FK_Orders_Customer]
ON [dbo].[Orders]
    ([CustomerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------