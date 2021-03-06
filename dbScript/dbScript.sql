USE [TestData]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/10/2016 9:35:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[number] [int] NULL,
	[documentCode] [nvarchar](20) NULL,
	[beginDate] [date] NULL,
	[customerId] [nvarchar](20) NULL,
	[invoiceClosedTime] [nvarchar](20) NULL,
	[totalAmount] [nvarchar](20) NULL,
	[customerName] [nvarchar](100) NULL,
	[serialCode] [nvarchar](10) NULL,
	[companyCodeInSerialCode] [nvarchar](5) NULL,
	[customerType] [nvarchar](2) NULL,
	[productCode] [nvarchar](2) NULL,
	[key] [nvarchar](2) NULL,
	[companyCode] [nvarchar](5) NULL,
	[customerEmail] [nvarchar](100) NULL,
	[customerTelephone] [nvarchar](20) NULL,
	[customerAddress] [nvarchar](350) NULL,
	[isCopyDocument] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerSelect]    Script Date: 5/10/2016 9:35:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CustomerSelect]
	@documentCode VARCHAR(50)
AS
BEGIN
	SELECT * from Customer
	where documentCode = @documentCode
END

GO
