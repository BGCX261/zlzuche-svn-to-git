USE [ZLzuche]
GO
/****** Object:  Table [dbo].[BasicData]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasicData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_BasicData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDict]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDict](
	[Id] [nvarchar](50) NOT NULL,
	[DictType] [nvarchar](100) NULL,
	[DictName] [nvarchar](100) NULL,
	[DictValue] [nvarchar](100) NULL,
	[OrderNo] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Describe] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shop] ON
INSERT [dbo].[Shop] ([ID], [Name], [Province], [City], [Area], [Tel], [Address], [Describe], [Remark]) VALUES (2, N'天河店', NULL, NULL, NULL, N'020', N'天河', N'天河23', N'天河23')
SET IDENTITY_INSERT [dbo].[Shop] OFF
/****** Object:  Table [dbo].[rzzlApply]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rzzlApply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseName] [nvarchar](50) NULL,
	[Linkman] [nvarchar](50) SPARSE  NULL,
	[LinkTel] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NeedInfo] [nvarchar](4000) NULL,
	[ApplyTime] [datetime] NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_rzzlApply] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rzzlApply', @level2type=N'COLUMN',@level2name=N'EnterpriseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rzzlApply', @level2type=N'COLUMN',@level2name=N'Linkman'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rzzlApply', @level2type=N'COLUMN',@level2name=N'LinkTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'融资租赁需求信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rzzlApply', @level2type=N'COLUMN',@level2name=N'NeedInfo'
GO
SET IDENTITY_INSERT [dbo].[rzzlApply] ON
INSERT [dbo].[rzzlApply] ([ID], [EnterpriseName], [Linkman], [LinkTel], [Email], [NeedInfo], [ApplyTime], [Remark]) VALUES (4, N'中国移动', N'李四', N'132', N'十多份萨芬', N'士大夫撒发生', CAST(0x0000A1BC011E2040 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[rzzlApply] OFF
/****** Object:  Table [dbo].[News]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [nvarchar](50) NOT NULL,
	[NewType] [nvarchar](50) NULL,
	[Subject] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateTime] [nvarchar](50) NULL,
	[LastUpdateTime] [nvarchar](50) NULL,
	[LastIpAddress] [nvarchar](50) NULL,
	[Describe] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PapersType] [nvarchar](50) NULL,
	[PapersNumber] [nvarchar](50) NULL,
	[RegisterTime] [datetime] NULL,
	[LastUpdateTime] [nvarchar](50) NULL,
	[LastIpAddress] [nvarchar](50) NULL,
	[IsDelete] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'PapersType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'LastIpAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Status'
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([ID], [LoginID], [Password], [CustomerName], [Phone], [Email], [PapersType], [PapersNumber], [RegisterTime], [LastUpdateTime], [LastIpAddress], [IsDelete], [Status], [Remark]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'超级管理员', N'13900248765', N'dd@qq.com', NULL, N'232323', CAST(0x0000A1B000BB6071 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([ID], [LoginID], [Password], [CustomerName], [Phone], [Email], [PapersType], [PapersNumber], [RegisterTime], [LastUpdateTime], [LastIpAddress], [IsDelete], [Status], [Remark]) VALUES (2, N'1234', N'81dc9bdb52d04dc20036dbd8313ed055', N'12345', N'1234', N'1234', NULL, N'1234', CAST(0x0000A1BB014BA934 AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[CarType]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CarTypeName] [nvarchar](50) NULL,
	[Describe] [nvarchar](4000) NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_CarType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CarType] ON
INSERT [dbo].[CarType] ([ID], [CarTypeName], [Describe], [Remark]) VALUES (2, N'本田飞度', N'本田飞度', N'本田飞度')
INSERT [dbo].[CarType] ([ID], [CarTypeName], [Describe], [Remark]) VALUES (3, N'丰田', N'丰田', N'丰田')
INSERT [dbo].[CarType] ([ID], [CarTypeName], [Describe], [Remark]) VALUES (4, N'雪佛兰', N'雪佛兰科鲁兹', N'雪佛兰科鲁兹')
SET IDENTITY_INSERT [dbo].[CarType] OFF
/****** Object:  Table [dbo].[Car]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NOT NULL,
	[CarTypeId] [int] NULL,
	[CarName] [nvarchar](50) NULL,
	[CarModel] [nvarchar](50) NULL,
	[BasicInsure] [nvarchar](50) NULL,
	[PreAuthorization] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[IsMileage] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Describe] [nvarchar](4000) NULL,
	[clzdj] [nvarchar](50) NULL,
	[clgzs] [nvarchar](50) NULL,
	[ycspf] [nvarchar](50) NULL,
	[1Yearzlfy] [nvarchar](50) NULL,
	[2Yearzlfy] [nvarchar](50) NULL,
	[3Yearzlfy] [nvarchar](50) NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号，例如1.5T，1.8T' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'CarModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本险' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'BasicInsure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预授权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'PreAuthorization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否限制里程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'IsMileage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(已出租、可出租、保养中)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆指导价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'clzdj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆购置税' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'clgzs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验车上牌费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'ycspf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一年的融资租赁费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'1Yearzlfy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'两年的融资租赁费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Car', @level2type=N'COLUMN',@level2name=N'2Yearzlfy'
GO
SET IDENTITY_INSERT [dbo].[Car] ON
INSERT [dbo].[Car] ([ID], [ShopId], [CarTypeId], [CarName], [CarModel], [BasicInsure], [PreAuthorization], [Price], [IsMileage], [Status], [Describe], [clzdj], [clgzs], [ycspf], [1Yearzlfy], [2Yearzlfy], [3Yearzlfy], [Remark]) VALUES (1, 2, 3, N'凯美瑞', N'2.0T', N'60元/天', N'5000元起', CAST(165.00 AS Decimal(18, 2)), N'不限里程', N'待出租', N'165元/天', N'441000', N'37692', N'450', N'479524', N'521525', N'560506', N'165元/天')
SET IDENTITY_INSERT [dbo].[Car] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderType] [nvarchar](50) NULL,
	[GetCarTime] [datetime] NULL,
	[ReturnCarTime] [datetime] NULL,
	[HireDays] [nvarchar](50) NULL,
	[Deposit] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单类型（长租或者短租）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租期（以天为单位）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'HireDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'押金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Deposit'
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 05/12/2013 17:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[CarId] [int] NULL,
	[CarNum] [int] NULL,
	[Price] [decimal](18, 18) NULL,
	[Status] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0,加入订单；1，已经出租；2.已还车；-1已撤销订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Status'
GO
/****** Object:  Default [DF_Customer_LoginID]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_LoginID]  DEFAULT ((0)) FOR [LoginID]
GO
/****** Object:  Default [DF_Customer_IsDelete]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Customer_Status]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_Car_CarType]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarType] FOREIGN KEY([CarTypeId])
REFERENCES [dbo].[CarType] ([ID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarType]
GO
/****** Object:  ForeignKey [FK_Shop_Car]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Car] FOREIGN KEY([ShopId])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Shop_Car]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Car]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Car] FOREIGN KEY([CarId])
REFERENCES [dbo].[Car] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Car]
GO
/****** Object:  ForeignKey [FK_OrderDetails_Orders]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
/****** Object:  ForeignKey [FK_Orders_Customer]    Script Date: 05/12/2013 17:51:14 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
