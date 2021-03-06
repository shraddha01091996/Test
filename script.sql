USE [BNK_SSO_DEV]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 3/5/2020 4:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FromEmail] [nvarchar](256) NULL,
	[ApplicantSavedBccEmailAddress] [nvarchar](512) NULL,
	[ApplicantSubmittedBccEmailAddress] [nvarchar](512) NULL,
	[T24CompanyCode] [nvarchar](64) NULL,
	[T24OverdraftGroupCode] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Panels]    Script Date: 3/5/2020 4:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Panels](
	[PanelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Panels] PRIMARY KEY CLUSTERED 
(
	[PanelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 3/5/2020 4:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.ProductCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryPanels]    Script Date: 3/5/2020 4:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryPanels](
	[CategoryId] [int] NOT NULL,
	[PanelId] [int] NOT NULL,
	[PanelOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductCategoryPanels] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[PanelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/5/2020 4:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CustomerType] [int] NOT NULL,
	[Label] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[T24Supported] [bit] NOT NULL,
	[T24ProductGroup] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Brands] ([BrandId], [Name], [FromEmail], [ApplicantSavedBccEmailAddress], [ApplicantSubmittedBccEmailAddress], [T24CompanyCode], [T24OverdraftGroupCode]) VALUES (N'Gmy', N'Goldfields Money', N'noreply@bnk.com.au', N'dummy@example.com', N'dummy@example.com', N'AU0010003', N'OVERDRAFT.ACCOUNTS')
INSERT [dbo].[Brands] ([BrandId], [Name], [FromEmail], [ApplicantSavedBccEmailAddress], [ApplicantSubmittedBccEmailAddress], [T24CompanyCode], [T24OverdraftGroupCode]) VALUES (N'Pioneer', N'Pioneer Credit', N'noreply@pioneer.com.au', N'dummy@example.com', N'dummy@example.com', N'AU0010003', N'OVERDRAFT.ACCOUNTS')
SET IDENTITY_INSERT [dbo].[Panels] ON 

INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (35, N'Acceptance')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (6, N'AdditionalComments')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (7, N'Assets')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (8, N'BridgingDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (9, N'BridgingLoanDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (73, N'CardType')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (10, N'ChangeinCircumstances')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (12, N'ConstructionDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (11, N'ContactDetail')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (13, N'CorporateAddress')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (14, N'CorporateDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (15, N'CorporateFinances')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (16, N'DebtConsolidations')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (17, N'DepositDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (18, N'EmploymentDetail')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (19, N'HomeLoanDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (20, N'HouseholdDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (36, N'IdentityDocuments')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (21, N'IndividualDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (22, N'LiabilitiesAndExpenses')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (23, N'LoanDetail')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (38, N'NameAndContact')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (39, N'None')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (47, N'NumberOfApplicants')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (24, N'OtherIncomes')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (25, N'OtherPurposes')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (26, N'OverdraftDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (37, N'ProductSelection')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (28, N'PropertyDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (34, N'ResidentialAddressCurrentOnly')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (33, N'ResidentialAddressHistory')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (30, N'Signatories')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (49, N'SignatoryDocuments')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (31, N'TaxDetails')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (71, N'Test')
INSERT [dbo].[Panels] ([PanelId], [Name]) VALUES (32, N'VehicleDetails')
SET IDENTITY_INSERT [dbo].[Panels] OFF
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (7, N'Bridging Home Loan')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (1010, N'Business OD Ac')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (13, N'Car Loan')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (1009, N'Everyday OD Accounts')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (17, N'Home Loan - Contruction')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (16, N'Home Loan - Investment')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (15, N'Home Loan - Owner Occupied')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (18, N'Lead Generation')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (1008, N'Other Personal Loan')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (8, N'Savings - Corporate')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (9, N'Savings - Individual')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (10, N'Term Deposit')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (20, N'Term Deposit - Corporate')
INSERT [dbo].[ProductCategories] ([CategoryId], [Name]) VALUES (19, N'Unsecured Personal Loan - Individual')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 8, 14)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 9, 19)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 16, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 25, 16)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (7, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 13, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 14, 14)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 30, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 35, 40)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 49, 36)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (8, 73, 39)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 31, 8)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 34, 9)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (9, 73, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 17, 6)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 31, 8)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 34, 9)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (10, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 23, 17)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 32, 11)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 33, 5)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (13, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 19, 18)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 28, 12)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (15, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 19, 18)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 28, 12)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (16, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 12, 13)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 16, 14)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 19, 18)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 25, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (17, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 16, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 23, 17)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 35, 27)
GO
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (18, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 16, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 23, 17)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (19, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 13, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 14, 14)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 17, 36)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 30, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 35, 40)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (20, 49, 30)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 7, 22)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 10, 25)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 16, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 18, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 20, 24)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 21, 4)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 22, 23)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 24, 21)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 26, 11)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 31, 5)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 33, 7)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 35, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 36, 10)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 47, 0)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1009, 73, 26)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 10, 28)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 13, 15)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 14, 14)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 26, 20)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 30, 27)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 35, 40)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 49, 16)
INSERT [dbo].[ProductCategoryPanels] ([CategoryId], [PanelId], [PanelOrder]) VALUES (1010, 73, 29)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (1, N'BSNSS.ACCESS.AC', 1, N'Boss Access Account', 8, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (2, N'EVERYDAY.TR.ACCOUNTS', 0, N'Essential Account', 9, 1, N'EVERYDAY.TRANSACTION.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (3, N'CASH.MG.AC', 0, N'Cash Counter Account', 9, 1, N'CASH.MGMT.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (5, N'CASH.MG.BUS', 1, N'Cash Counter Acc', 8, 0, N'CASH.MGMT.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (6, N'PENSION.DEEMING.AC', 0, N'Retire Style Account', 9, 1, N'SAVINGS.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (7, N'COMMUNITY.ACCESS.AC', 1, N'Teamzone Banking Account', 8, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (8, N'RETAIL.TD.KIDS', 0, N'Kids Count 2 Term Deposit', 18, 1, N'RETAIL.TD.GROUP')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (9, N'RETAIL.TD.REGULAR', 0, N'Stow It Term Deposit', 10, 1, N'RETAIL.TD.GROUP')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (10, N'EVERYDAY.OD.ACCOUNTS', 0, N'Essential Flex Account', 1009, 1, N'OVERDRAFT.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (11, N'BUSINESS.OD.ACCOUNTS', 1, N'Boss Flex Account', 1010, 0, N'OVERDRAFT.ACCOUNTS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (12, N'PL.UNSECURED', 0, N'Personal Loan', 19, 1, N'PERSONAL.LOAN.GROUP.UNSEC.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (13, N'CAR.LOAN.3Y', 0, N'Car Loan', 13, 1, N'CAR.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (15, N'HL.OWNER.OCCUPIER', 0, N'Home Loan', 15, 1, N'HOME.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (16, N'HL.INVESTMENT', 0, N'Investment Home Loan', 16, 1, N'HOME.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (17, N'HL.BRIDGING', 0, N'Bridging Loan', 7, 1, N'HOME.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (18, N'HL.CONSTRUCTION', 0, N'Construction Loan', 17, 1, N'HOME.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (19, N'PL.OTHER.SEC', 0, N'Other Security Personal Loan', 18, 0, N'PERSONAL.LOAN.GROUP.LOS')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (20, N'SMSF.LOAN.RESIDENTIAL', 1, N'SMSF Residential Property Loan', 18, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (21, N'SMSF.LOAN.COMMERCIAL', 1, N'SMSF Commercial Property Loan', 18, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (22, N'COMMERCIAL.LOAN', 1, N'Business Term Loan', 18, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (23, N'BUSINESS.TD', 1, N'Boss Term Deposit', 20, 0, NULL)
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (1011, N'RETIREE.AC', 0, N'Retiree AC', 9, 1, N'RETIREE.AC')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (1012, N'BONUS.SAVER', 0, N'Bonus Saver', 9, 1, N'BONUS.SAVER')
INSERT [dbo].[Products] ([ProductId], [Name], [CustomerType], [Label], [CategoryId], [T24Supported], [T24ProductGroup]) VALUES (1018, N'CAR.LOAN.3Y.MORE', 0, N'Car Loan More', 13, 1, N'CAR.LOAN.GROUP.LOS')
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [T24Supported]
GO
ALTER TABLE [dbo].[ProductCategoryPanels]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.ProductCategoryPanels_dbo.Panels_PanelId] FOREIGN KEY([PanelId])
REFERENCES [dbo].[Panels] ([PanelId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategoryPanels] CHECK CONSTRAINT [FK_dbo.ProductCategoryPanels_dbo.Panels_PanelId]
GO
ALTER TABLE [dbo].[ProductCategoryPanels]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.ProductCategoryPanels_dbo.ProductCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategoryPanels] CHECK CONSTRAINT [FK_dbo.ProductCategoryPanels_dbo.ProductCategories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategories_CategoryId]
GO
