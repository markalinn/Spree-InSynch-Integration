-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2009 at 02:01 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adbud_insync`
--

-- --------------------------------------------------------

--
-- Table structure for table `AP_Vendor`
--

CREATE TABLE IF NOT EXISTS `AP_Vendor` (
  `APDivisionNo` varchar(2) default NULL,
  `VendorNo` varchar(7) default NULL,
  `VendorName` varchar(30) default NULL,
  `AddressLine1` varchar(30) default NULL,
  `AddressLine2` varchar(30) default NULL,
  `AddressLine3` varchar(30) default NULL,
  `City` varchar(20) default NULL,
  `State` varchar(2) default NULL,
  `ZipCode` varchar(10) default NULL,
  `CountryCode` varchar(3) default NULL,
  `PrimaryContact` varchar(10) default NULL,
  `TelephoneNo` varchar(17) default NULL,
  `TelephoneExt` varchar(5) default NULL,
  `FaxNo` varchar(17) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `URLAddress` varchar(50) default NULL,
  `TermsCode` varchar(2) default NULL,
  `Reference` varchar(15) default NULL,
  `TemporaryVendor` varchar(1) default NULL,
  `CreditCardVendor` varchar(1) default NULL,
  `HoldPayment` varchar(1) default NULL,
  `ExemptionNoOnFile` varchar(1) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TaxClass` varchar(2) default NULL,
  `AccountKey` varchar(9) default NULL,
  `SeparateCheck` varchar(1) default NULL,
  `Comment` varchar(30) default NULL,
  `Sort` varchar(10) default NULL,
  `BatchFax` varchar(1) default NULL,
  `UsePOReceiptOfInvForVendor` varchar(1) default NULL,
  `PrimaryPurchaseAddressCode` varchar(4) default NULL,
  `VendorType` varchar(1) default NULL,
  `Form1099` varchar(1) default NULL,
  `TaxpayerIDSocialSecurityNo` varchar(9) default NULL,
  `Box1099` varchar(3) default NULL,
  `MiscBox9` varchar(1) default NULL,
  `LastPurchaseDate` varchar(8) default NULL,
  `LastPaymentDate` varchar(8) default NULL,
  `LastCheckNo` varchar(10) default NULL,
  `LastCheckAmt` decimal(15,2) default NULL,
  `RetentionRate` decimal(7,2) default NULL,
  `AverageDaysToPay` decimal(3,0) default NULL,
  `AverageDaysOverDue` decimal(3,0) default NULL,
  `BalanceDue` decimal(16,2) default NULL,
  `NumberOfInvToUseInCalc` decimal(7,0) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AR_CustomerSalesHistory`
--

CREATE TABLE IF NOT EXISTS `AR_CustomerSalesHistory` (
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `FiscalYear` varchar(4) default NULL,
  `FiscalPeriod` varchar(2) default NULL,
  `DollarsSold` decimal(15,2) default NULL,
  `CostOfGoodsSold` decimal(15,2) default NULL,
  `CashReceived` decimal(15,2) default NULL,
  `FinanceCharges` decimal(15,2) default NULL,
  `NumberOfInvoices` decimal(7,0) default NULL,
  `NumberOfFinanceChrgs` decimal(7,0) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AR_InvoiceHistoryDetail`
--

CREATE TABLE IF NOT EXISTS `AR_InvoiceHistoryDetail` (
  `InvoiceNo` varchar(7) default NULL,
  `HeaderSeqNo` varchar(6) default NULL,
  `DetailSeqNo` varchar(6) default NULL,
  `ItemCode` varchar(15) default NULL,
  `ItemType` varchar(1) default NULL,
  `ItemCodeDesc` varchar(30) default NULL,
  `ExtendedDescriptionKey` varchar(10) default NULL,
  `SalesAcctKey` varchar(9) default NULL,
  `CostOfGoodsSoldAcctKey` varchar(9) default NULL,
  `InventoryAcctKey` varchar(9) default NULL,
  `UnitOfMeasure` varchar(4) default NULL,
  `SubjectToExemption` varchar(1) default NULL,
  `Commissionable` varchar(1) default NULL,
  `TaxClass` varchar(2) default NULL,
  `Discount` varchar(1) default NULL,
  `DropShip` varchar(1) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `PriceLevel` varchar(1) default NULL,
  `ProductLine` varchar(4) default NULL,
  `Valuation` varchar(1) default NULL,
  `PriceOverridden` varchar(1) default NULL,
  `OrderWarehouse` varchar(3) default NULL,
  `Revision` varchar(3) default NULL,
  `BillOption1` varchar(2) default NULL,
  `BillOption2` varchar(2) default NULL,
  `BillOption3` varchar(2) default NULL,
  `BillOption4` varchar(2) default NULL,
  `BillOption5` varchar(2) default NULL,
  `BillOption6` varchar(2) default NULL,
  `BillOption7` varchar(2) default NULL,
  `BillOption8` varchar(2) default NULL,
  `BillOption9` varchar(2) default NULL,
  `KitItem` varchar(1) default NULL,
  `ExplodedKitItem` varchar(1) default NULL,
  `SkipPrintCompLine` varchar(1) default NULL,
  `StandardKitBill` varchar(1) default NULL,
  `AliasItemNo` varchar(30) default NULL,
  `CustomerAction` varchar(1) default NULL,
  `ItemAction` varchar(1) default NULL,
  `WarrantyCode` varchar(10) default NULL,
  `ExpirationDate` varchar(8) default NULL,
  `ExpirationOverridden` varchar(1) default NULL,
  `CostCode` varchar(9) default NULL,
  `CostType` varchar(1) default NULL,
  `CommentText` varchar(2048) default NULL,
  `PromiseDate` varchar(8) default NULL,
  `QuantityShipped` decimal(16,6) default NULL,
  `QuantityOrdered` decimal(16,6) default NULL,
  `QuantityBackordered` decimal(16,6) default NULL,
  `UnitPrice` decimal(16,6) default NULL,
  `UnitCost` decimal(16,6) default NULL,
  `UnitOfMeasureConvFactor` decimal(12,4) default NULL,
  `CommissionAmt` decimal(13,2) default NULL,
  `LineDiscountPercent` decimal(9,3) default NULL,
  `QuantityPerBill` decimal(16,6) default NULL,
  `ExtensionAmt` decimal(12,2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AR_InvoiceHistoryHeader`
--

CREATE TABLE IF NOT EXISTS `AR_InvoiceHistoryHeader` (
  `InvoiceNo` varchar(7) default NULL,
  `HeaderSeqNo` varchar(6) default NULL,
  `ModuleCode` varchar(3) default NULL,
  `InvoiceType` varchar(2) default NULL,
  `InvoiceDate` varchar(8) default NULL,
  `TransactionDate` varchar(8) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `TermsCode` varchar(2) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TaxExemptNo` varchar(15) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `CustomerPONo` varchar(15) default NULL,
  `ApplyToInvoiceNo` varchar(7) default NULL,
  `Comment` varchar(30) default NULL,
  `RepetitiveInvoiceRefNo` varchar(4) default NULL,
  `JobNo` varchar(7) default NULL,
  `InvoiceDueDate` varchar(8) default NULL,
  `DiscountDueDate` varchar(8) default NULL,
  `SourceJournal` varchar(2) default NULL,
  `JournalNoGLBatchNo` varchar(6) default NULL,
  `BatchFax` varchar(1) default NULL,
  `FaxNo` varchar(17) default NULL,
  `ShippingInvoice` varchar(1) default NULL,
  `SalesOrderNo` varchar(7) default NULL,
  `OrderType` varchar(1) default NULL,
  `OrderDate` varchar(8) default NULL,
  `BillToName` varchar(30) default NULL,
  `BillToAddress1` varchar(30) default NULL,
  `BillToAddress2` varchar(30) default NULL,
  `BillToAddress3` varchar(30) default NULL,
  `BillToCity` varchar(20) default NULL,
  `BillToState` varchar(2) default NULL,
  `BillToZipCode` varchar(10) default NULL,
  `BillToCountryCode` varchar(3) default NULL,
  `ShipToCode` varchar(4) default NULL,
  `ShipToName` varchar(30) default NULL,
  `ShipToAddress1` varchar(30) default NULL,
  `ShipToAddress2` varchar(30) default NULL,
  `ShipToAddress3` varchar(30) default NULL,
  `ShipToCity` varchar(20) default NULL,
  `ShipToState` varchar(2) default NULL,
  `ShipToZipCode` varchar(10) default NULL,
  `ShipToCountryCode` varchar(3) default NULL,
  `ShipDate` varchar(8) default NULL,
  `ShipVia` varchar(15) default NULL,
  `ShipZone` varchar(5) default NULL,
  `FOB` varchar(15) default NULL,
  `ConfirmTo` varchar(30) default NULL,
  `CheckNoForDeposit` varchar(7) default NULL,
  `SplitCommissions` varchar(1) default NULL,
  `SalespersonDivisionNo2` varchar(2) default NULL,
  `SalespersonNo2` varchar(4) default NULL,
  `SalespersonDivisionNo3` varchar(2) default NULL,
  `SalespersonNo3` varchar(4) default NULL,
  `SalespersonDivisionNo4` varchar(2) default NULL,
  `SalespersonNo4` varchar(4) default NULL,
  `SalespersonDivisionNo5` varchar(2) default NULL,
  `SalespersonNo5` varchar(4) default NULL,
  `PaymentType` varchar(5) default NULL,
  `PaymentTypeCategory` varchar(1) default NULL,
  `OtherPaymentTypeRefNo` varchar(24) default NULL,
  `CorporateCustIDPurchOrder` varchar(25) default NULL,
  `CorporateTaxOverrd` varchar(1) default NULL,
  `DepositCorporateTaxOverrd` varchar(1) default NULL,
  `CardholderName` varchar(30) default NULL,
  `ExpirationDateYear` varchar(4) default NULL,
  `ExpirationDateMonth` varchar(2) default NULL,
  `EncryptedCreditCardNo` varchar(24) default NULL,
  `Last4UnencryptedCreditCardNos` varchar(4) default NULL,
  `AuthorizationCode` varchar(16) default NULL,
  `AuthorizationCodeForDeposit` varchar(16) default NULL,
  `CreditCardTransactionID` varchar(10) default NULL,
  `CreditCardTransactionIDForDep` varchar(10) default NULL,
  `RMANo` varchar(7) default NULL,
  `EBMSubmissionType` varchar(1) default NULL,
  `EBMUserIDSubmittingThisOrder` varchar(15) default NULL,
  `EBMUserType` varchar(1) default NULL,
  `ShipperID` varchar(3) default NULL,
  `UserKey` varchar(10) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `ShipWeight` varchar(5) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `CRMUserID` varchar(11) default NULL,
  `CRMCompanyID` varchar(11) default NULL,
  `CRMPersonID` varchar(11) default NULL,
  `CRMOpportunityID` varchar(11) default NULL,
  `TaxableSalesAmt` decimal(13,2) default NULL,
  `NonTaxableSalesAmt` decimal(13,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `SalesTaxAmt` decimal(12,2) default NULL,
  `CostOfSalesAmt` decimal(13,2) default NULL,
  `AmountSubjectToDiscount` decimal(13,2) default NULL,
  `DiscountRate` decimal(9,3) default NULL,
  `DiscountAmt` decimal(12,2) default NULL,
  `SalesSubjectToComm` decimal(13,2) default NULL,
  `CostSubjectToComm` decimal(13,2) default NULL,
  `CommissionRate` decimal(9,3) default NULL,
  `CommissionAmt` decimal(13,2) default NULL,
  `SplitCommRate2` decimal(9,3) default NULL,
  `SplitCommRate3` decimal(9,3) default NULL,
  `SplitCommRate4` decimal(9,3) default NULL,
  `SplitCommRate5` decimal(9,3) default NULL,
  `DepositAmt` decimal(13,2) default NULL,
  `CreditCardPaymentBalanceAmt` decimal(13,2) default NULL,
  `Weight` decimal(12,2) default NULL,
  `RetentionAmt` decimal(13,2) default NULL,
  `NumberOfPackages` decimal(5,0) default NULL,
  `DepositCorporateSalesTax` decimal(12,2) default NULL,
  `CorporateSalesTax` decimal(12,2) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AR_InvoiceHistoryTracking`
--

CREATE TABLE IF NOT EXISTS `AR_InvoiceHistoryTracking` (
  `InvoiceNo` varchar(7) default NULL,
  `HeaderSeqNo` varchar(6) default NULL,
  `PackageNo` varchar(4) default NULL,
  `TrackingID` varchar(30) default NULL,
  `Comment` varchar(30) default NULL,
  `StarshipShipVia` varchar(15) default NULL,
  `UpdatedFromStarship` varchar(1) default NULL,
  `SendPackageToStarship` varchar(1) default NULL,
  `Weight` decimal(13,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `FreightAmtAddedToInv` decimal(12,2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AR_Salesperson`
--

CREATE TABLE IF NOT EXISTS `AR_Salesperson` (
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `SalespersonName` varchar(30) default NULL,
  `AddressLine1` varchar(30) default NULL,
  `AddressLine2` varchar(30) default NULL,
  `AddressLine3` varchar(30) default NULL,
  `City` varchar(20) default NULL,
  `State` varchar(2) default NULL,
  `ZipCode` varchar(10) default NULL,
  `CountryCode` varchar(3) default NULL,
  `TelephoneNo` varchar(17) default NULL,
  `TelephoneExt` varchar(5) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `SalesManagerDivisionNo` varchar(2) default NULL,
  `SalesManagerNo` varchar(4) default NULL,
  `CRMUserID` varchar(11) default NULL,
  `UserKey` varchar(10) default NULL,
  `CommissionRate` decimal(9,3) default NULL,
  `SalesManagerCommRate` decimal(9,3) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EC_CategoryItem`
--

CREATE TABLE IF NOT EXISTS `EC_CategoryItem` (
  `ItemNumber` varchar(15) default NULL,
  `Category` varchar(30) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EC_CategoryMaster`
--

CREATE TABLE IF NOT EXISTS `EC_CategoryMaster` (
  `Category` varchar(30) default NULL,
  `Description` varchar(50) default NULL,
  `ImageFileName` varchar(30) default NULL,
  `ParentCategory1` varchar(30) default NULL,
  `ParentCategory2` varchar(30) default NULL,
  `ParentCategory3` varchar(30) default NULL,
  `ParentCategory4` varchar(30) default NULL,
  `ParentCategory5` varchar(30) default NULL,
  `Type` varchar(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EC_CategoryText`
--

CREATE TABLE IF NOT EXISTS `EC_CategoryText` (
  `Category` varchar(30) default NULL,
  `sequence` varchar(3) default NULL,
  `text` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EC_CategoryTree`
--

CREATE TABLE IF NOT EXISTS `EC_CategoryTree` (
  `Category` varchar(30) default NULL,
  `SubCategory` varchar(30) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EC_ItemExtDesc`
--

CREATE TABLE IF NOT EXISTS `EC_ItemExtDesc` (
  `Itemno` varchar(15) default NULL,
  `sequence` varchar(3) default NULL,
  `text` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FromMASAR_Customer`
--

CREATE TABLE IF NOT EXISTS `FromMASAR_Customer` (
  `ARDivisionNo` varchar(2) NOT NULL default '',
  `CustomerNo` varchar(7) NOT NULL default '',
  `CustomerName` varchar(30) default NULL,
  `AddressLine1` varchar(30) default NULL,
  `AddressLine2` varchar(30) default NULL,
  `AddressLine3` varchar(30) default NULL,
  `City` varchar(20) default NULL,
  `State` varchar(2) default NULL,
  `ZipCode` varchar(10) default NULL,
  `CountryCode` varchar(3) default NULL,
  `TelephoneNo` varchar(17) default NULL,
  `TelephoneExt` varchar(5) default NULL,
  `FaxNo` varchar(17) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `URLAddress` varchar(50) default NULL,
  `EBMEnabled` varchar(1) default NULL,
  `EBMConsumerUserID` varchar(15) default NULL,
  `BatchFax` varchar(1) default NULL,
  `DefaultCreditCardPmtType` varchar(5) default NULL,
  `ContactCode` varchar(10) default NULL,
  `ShipMethod` varchar(15) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TaxExemptNo` varchar(15) default NULL,
  `TermsCode` varchar(2) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `Comment` varchar(30) default NULL,
  `SortField` varchar(10) default NULL,
  `TemporaryCustomer` varchar(1) default NULL,
  `OpenItemCustomer` varchar(1) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `StatementCycle` varchar(1) default NULL,
  `PrintDunningMessage` varchar(1) default NULL,
  `CustomerType` varchar(4) default NULL,
  `PriceLevel` varchar(1) default NULL,
  `DateLastActivity` varchar(8) default NULL,
  `DateLastPayment` varchar(8) default NULL,
  `DateLastStatement` varchar(8) default NULL,
  `DateLastFinanceChrg` varchar(8) default NULL,
  `DateLastAging` varchar(8) default NULL,
  `DefaultItemCode` varchar(15) default NULL,
  `CreditHold` varchar(1) default NULL,
  `PrimaryShipToCode` varchar(4) default NULL,
  `DateEstablished` varchar(8) default NULL,
  `EncryptedCreditCardNo` varchar(24) default NULL,
  `DefaultPaymentType` varchar(5) default NULL,
  `EmailStatements` varchar(1) default NULL,
  `NumberOfInvToUseInCalc` decimal(2,0) default NULL,
  `AvgDaysPaymentInvoice` decimal(3,0) default NULL,
  `AvgDaysOverDue` decimal(3,0) default NULL,
  `CustomerDiscountRate` decimal(13,3) default NULL,
  `ServiceChargeRate` decimal(13,3) default NULL,
  `CreditLimit` decimal(14,2) default NULL,
  `LastPaymentAmt` decimal(14,2) default NULL,
  `HighestStmntBalance` decimal(14,2) default NULL,
  `UnpaidServiceChrg` decimal(14,2) default NULL,
  `BalanceForward` decimal(14,2) default NULL,
  `CurrentBalance` decimal(14,2) default NULL,
  `AgingCategory1` decimal(14,2) default NULL,
  `AgingCategory2` decimal(14,2) default NULL,
  `AgingCategory3` decimal(14,2) default NULL,
  `AgingCategory4` decimal(14,2) default NULL,
  `OpenOrderAmt` decimal(14,2) default NULL,
  `RetentionCurrent` decimal(14,2) default NULL,
  `RetentionAging1` decimal(14,2) default NULL,
  `RetentionAging2` decimal(14,2) default NULL,
  `RetentionAging3` decimal(14,2) default NULL,
  `RetentionAging4` decimal(14,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL,
  PRIMARY KEY  (`ARDivisionNo`,`CustomerNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FromMas_SO_SalesOrderHistoryDetail`
--

CREATE TABLE IF NOT EXISTS `FromMas_SO_SalesOrderHistoryDetail` (
  `SalesOrderNo` varchar(7) default NULL,
  `SequenceNo` varchar(14) default NULL,
  `LineKey` varchar(6) default NULL,
  `OriginalLine` varchar(1) default NULL,
  `CancelledLine` varchar(1) default NULL,
  `CancelReasonCode` varchar(5) default NULL,
  `ItemCode` varchar(15) default NULL,
  `ItemType` varchar(1) default NULL,
  `ItemCodeDesc` varchar(30) default NULL,
  `ExtendedDescriptionKey` varchar(10) default NULL,
  `Discount` varchar(1) default NULL,
  `Commissionable` varchar(1) default NULL,
  `SubjectToExemption` varchar(1) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `PriceLevel` varchar(1) default NULL,
  `DropShip` varchar(1) default NULL,
  `PrintDropShipment` varchar(1) default NULL,
  `MasterOrderLineKey` varchar(6) default NULL,
  `UnitOfMeasure` varchar(4) default NULL,
  `SalesKitLineKey` varchar(6) default NULL,
  `CostOfGoodsSoldAcctKey` varchar(9) default NULL,
  `SalesAcctKey` varchar(9) default NULL,
  `PriceOverridden` varchar(1) default NULL,
  `ExplodedKitItem` varchar(1) default NULL,
  `StandardKitBill` varchar(1) default NULL,
  `Revision` varchar(3) default NULL,
  `BillOption1` varchar(2) default NULL,
  `BillOption2` varchar(2) default NULL,
  `BillOption3` varchar(2) default NULL,
  `BillOption4` varchar(2) default NULL,
  `BillOption5` varchar(2) default NULL,
  `BillOption6` varchar(2) default NULL,
  `BillOption7` varchar(2) default NULL,
  `BillOption8` varchar(2) default NULL,
  `BillOption9` varchar(2) default NULL,
  `BackorderKitCompLine` varchar(1) default NULL,
  `SkipPrintCompLine` varchar(1) default NULL,
  `PromiseDate` varchar(8) default NULL,
  `AliasItemNo` varchar(30) default NULL,
  `TaxClass` varchar(2) default NULL,
  `CustomerAction` varchar(1) default NULL,
  `ItemAction` varchar(1) default NULL,
  `WarrantyCode` varchar(10) default NULL,
  `ExpirationDate` varchar(8) default NULL,
  `ExpirationOverridden` varchar(1) default NULL,
  `CostOverridden` varchar(1) default NULL,
  `CostCode` varchar(9) default NULL,
  `CostType` varchar(1) default NULL,
  `CommentText` varchar(2048) default NULL,
  `QuantityOrderedOriginal` decimal(16,6) default NULL,
  `QuantityOrderedRevised` decimal(16,6) default NULL,
  `QuantityShipped` decimal(16,6) default NULL,
  `QuantityBackordered` decimal(16,6) default NULL,
  `OriginalUnitPrice` decimal(16,6) default NULL,
  `LastUnitPrice` decimal(16,6) default NULL,
  `LastExtensionAmt` decimal(12,2) default NULL,
  `UnitCost` decimal(16,6) default NULL,
  `UnitOfMeasureConvFactor` decimal(12,4) default NULL,
  `QuantityPerBill` decimal(16,6) default NULL,
  `LineDiscountPercent` decimal(9,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FromMAS_SO_SalesOrderHistoryHeader`
--

CREATE TABLE IF NOT EXISTS `FromMAS_SO_SalesOrderHistoryHeader` (
  `SalesOrderNo` varchar(7) default NULL,
  `OrderDate` varchar(8) default NULL,
  `OrderStatus` varchar(1) default NULL,
  `MasterRepeatingOrderNo` varchar(7) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `BillToName` varchar(30) default NULL,
  `BillToAddress1` varchar(30) default NULL,
  `BillToAddress2` varchar(30) default NULL,
  `BillToAddress3` varchar(30) default NULL,
  `BillToCity` varchar(20) default NULL,
  `BillToState` varchar(2) default NULL,
  `BillToZipCode` varchar(10) default NULL,
  `BillToCountryCode` varchar(3) default NULL,
  `ShipToCode` varchar(4) default NULL,
  `ShipToName` varchar(30) default NULL,
  `ShipToAddress1` varchar(30) default NULL,
  `ShipToAddress2` varchar(30) default NULL,
  `ShipToAddress3` varchar(30) default NULL,
  `ShipToCity` varchar(20) default NULL,
  `ShipToState` varchar(2) default NULL,
  `ShipToZipCode` varchar(10) default NULL,
  `ShipToCountryCode` varchar(3) default NULL,
  `ShipVia` varchar(15) default NULL,
  `ShipZone` varchar(5) default NULL,
  `ShipZoneActual` varchar(5) default NULL,
  `ShipWeight` varchar(5) default NULL,
  `CustomerPONo` varchar(15) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `CancelReasonCode` varchar(5) default NULL,
  `FreightCalculationMethod` varchar(1) default NULL,
  `FOB` varchar(15) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `ConfirmTo` varchar(30) default NULL,
  `Comment` varchar(30) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TermsCode` varchar(2) default NULL,
  `TaxExemptNo` varchar(15) default NULL,
  `RMANo` varchar(7) default NULL,
  `JobNo` varchar(7) default NULL,
  `LastInvoiceDate` varchar(8) default NULL,
  `LastInvoiceNo` varchar(7) default NULL,
  `CheckNoForDeposit` varchar(10) default NULL,
  `LotSerialLinesExist` varchar(1) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `SplitCommissions` varchar(1) default NULL,
  `SalespersonDivisionNo2` varchar(2) default NULL,
  `SalespersonNo2` varchar(4) default NULL,
  `SalespersonDivisionNo3` varchar(2) default NULL,
  `SalespersonNo3` varchar(4) default NULL,
  `SalespersonDivisionNo4` varchar(2) default NULL,
  `SalespersonNo4` varchar(4) default NULL,
  `SalespersonDivisionNo5` varchar(2) default NULL,
  `SalespersonNo5` varchar(4) default NULL,
  `EBMUserType` varchar(1) default NULL,
  `EBMSubmissionType` varchar(1) default NULL,
  `EBMUserIDSubmittingThisOrder` varchar(15) default NULL,
  `PaymentType` varchar(5) default NULL,
  `OtherPaymentTypeRefNo` varchar(24) default NULL,
  `CorporateCustIDPurchOrder` varchar(25) default NULL,
  `CorporateTaxOverrd` varchar(1) default NULL,
  `DepositCorporateTaxOverrd` varchar(1) default NULL,
  `CardholderName` varchar(30) default NULL,
  `ExpirationDateYear` varchar(4) default NULL,
  `ExpirationDateMonth` varchar(2) default NULL,
  `EncryptedCreditCardNo` varchar(24) default NULL,
  `Last4UnencryptedCreditCardNos` varchar(4) default NULL,
  `CreditCardAuthorizationNo` varchar(16) default NULL,
  `CreditCardTransactionID` varchar(10) default NULL,
  `AuthorizationDate` varchar(8) default NULL,
  `AuthorizationTime` varchar(6) default NULL,
  `AuthorizationCodeForDeposit` varchar(16) default NULL,
  `CreditCardTransactionIDForDep` varchar(10) default NULL,
  `PaymentTypeCategory` varchar(1) default NULL,
  `PayBalanceByCreditCard` varchar(1) default NULL,
  `FaxNo` varchar(17) default NULL,
  `CRMUserID` varchar(11) default NULL,
  `CRMCompanyID` varchar(11) default NULL,
  `CRMPersonID` varchar(11) default NULL,
  `CRMOpportunityID` varchar(11) default NULL,
  `TaxableSubjectToDiscount` decimal(13,2) default NULL,
  `NonTaxableSubjectToDiscount` decimal(13,2) default NULL,
  `TaxSubjToDiscPrcntTotSubjTo` decimal(9,3) default NULL,
  `DiscountRate` decimal(9,3) default NULL,
  `DiscountAmt` decimal(12,2) default NULL,
  `TaxableAmt` decimal(13,2) default NULL,
  `NonTaxableAmt` decimal(13,2) default NULL,
  `SalesTaxAmt` decimal(12,2) default NULL,
  `CreditCardPreAuthorizationAmt` decimal(13,2) default NULL,
  `CommissionRate` decimal(9,3) default NULL,
  `SplitCommRate2` decimal(9,3) default NULL,
  `SplitCommRate3` decimal(9,3) default NULL,
  `SplitCommRate4` decimal(9,3) default NULL,
  `SplitCommRate5` decimal(9,3) default NULL,
  `Weight` decimal(12,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `DepositAmt` decimal(13,2) default NULL,
  `CreditCardPaymentBalanceAmt` decimal(13,2) default NULL,
  `DepositCorporateSalesTax` decimal(12,2) default NULL,
  `CorporateSalesTax` decimal(12,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IM1_InventoryMasterfile`
--

CREATE TABLE IF NOT EXISTS `IM1_InventoryMasterfile` (
  `ItemNumber` varchar(15) default NULL,
  `ItemDescription` varchar(30) default NULL,
  `ProductLine` varchar(4) default NULL,
  `ProductType` varchar(1) default NULL,
  `Valuation` varchar(1) default NULL,
  `PriceCode` varchar(4) default NULL,
  `BackordersAllowed` varchar(1) default NULL,
  `IT_Enabled` varchar(1) default NULL,
  `DetailSalesHistory` varchar(1) default NULL,
  `Comm` varchar(1) default NULL,
  `StdUM` varchar(4) default NULL,
  `PurchaseUM` varchar(4) default NULL,
  `SalesUM` varchar(4) default NULL,
  `DefaultWhse` varchar(3) default NULL,
  `Weight` varchar(10) default NULL,
  `PrimaryVendorDivision` varchar(2) default NULL,
  `PrimaryVendorNumber` varchar(7) default NULL,
  `ImageFile` varchar(30) default NULL,
  `DateLastSold` varchar(6) default NULL,
  `DateLastRecpt` varchar(6) default NULL,
  `Category1` varchar(10) default NULL,
  `Category2` varchar(10) default NULL,
  `Category3` varchar(10) default NULL,
  `Category4` varchar(10) default NULL,
  `NameOfSale` varchar(10) default NULL,
  `SaleStartingDate` varchar(6) default NULL,
  `SaleEndingDate` varchar(6) default NULL,
  `SaleTypeDiscntSale` varchar(1) default NULL,
  `AlternateItems` varchar(1) default NULL,
  `PriceByItem` varchar(1) default NULL,
  `PriceByCustomerPriceLevel` varchar(1) default NULL,
  `PriceByCustomerNumber` varchar(1) default NULL,
  `TradeDiscount` varchar(1) default NULL,
  `ExplodeKit` varchar(1) default NULL,
  `ReturnsAllowed` varchar(1) default NULL,
  `RestockingMethod` varchar(1) default NULL,
  `_S2` varchar(3) default NULL,
  `NextLotSerialNumber` varchar(15) default NULL,
  `InventoryCycle` varchar(1) default NULL,
  `RoutingNumber` varchar(20) default NULL,
  `ProcureTypeBuyMakeSub` varchar(1) default NULL,
  `PlannerCode` varchar(3) default NULL,
  `BuyerCode` varchar(3) default NULL,
  `PlannedByMrp` varchar(1) default NULL,
  `LowLevelCode` varchar(2) default NULL,
  `PrntRecptLabels` varchar(1) default NULL,
  `ExtendedDescription` varchar(1) default NULL,
  `DetailReceiptHistory` varchar(1) default NULL,
  `AllocateLandedCost` varchar(1) default NULL,
  `TaxClass` varchar(2) default NULL,
  `AllowCostOverrideROG` varchar(1) default NULL,
  `WarrantyCode` varchar(10) default NULL,
  `CommRate` decimal(8,3) default NULL,
  `BaseCommAmount` decimal(11,2) default NULL,
  `PurchaseUMFactor` decimal(12,4) default NULL,
  `SalesUMFactor` decimal(12,4) default NULL,
  `SuggestedRetailPrice` decimal(11,3) default NULL,
  `StdPrice` decimal(11,3) default NULL,
  `StdCost` decimal(11,3) default NULL,
  `LastCost` decimal(11,3) default NULL,
  `AveCost` decimal(11,3) default NULL,
  `SalePriceDiscountPct` decimal(12,3) default NULL,
  `TotalQtyOnHand` decimal(11,3) default NULL,
  `AverageBackOrderFillDays` decimal(5,0) default NULL,
  `LastAllocatedCost` decimal(11,3) default NULL,
  `Volume` decimal(11,4) default NULL,
  `RestockingCharge` decimal(11,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IM2_InventoryItemWhseDetl`
--

CREATE TABLE IF NOT EXISTS `IM2_InventoryItemWhseDetl` (
  `ItemNumber` varchar(15) default NULL,
  `WhseCode` varchar(3) default NULL,
  `BinLocation` varchar(10) default NULL,
  `ReorderMethod` varchar(1) default NULL,
  `EconomicOrderQty` decimal(11,3) default NULL,
  `ReorderPointQty` decimal(11,3) default NULL,
  `MinimumOrderQty` decimal(11,3) default NULL,
  `MaximumOnHand` decimal(11,3) default NULL,
  `BeginningAveCostAt` decimal(12,3) default NULL,
  `BeginningBalQty` decimal(11,3) default NULL,
  `QtyReceived` decimal(11,3) default NULL,
  `QtyAdjusted` decimal(11,3) default NULL,
  `QtySold` decimal(11,3) default NULL,
  `QtyOnHand` decimal(11,3) default NULL,
  `QtyOnPurchaseOrder` decimal(11,3) default NULL,
  `QtyOnSalesOrder` decimal(11,3) default NULL,
  `QtyOnBackOrder` decimal(11,3) default NULL,
  `KitQtyReceivedNextPeriod` decimal(11,3) default NULL,
  `PtdQtySold` decimal(11,3) default NULL,
  `PtdQtyReturned` decimal(11,3) default NULL,
  `PtdDollarsSold` decimal(11,3) default NULL,
  `PtdCostOfGoodsSold` decimal(11,3) default NULL,
  `YtdQtySold` decimal(11,3) default NULL,
  `YtdQtyReturned` decimal(11,3) default NULL,
  `YtdDollarsSold` decimal(11,3) default NULL,
  `YtdCostOfGoodsSold` decimal(11,3) default NULL,
  `PriorYrQtySold` decimal(11,3) default NULL,
  `PriorYrQtyReturned` decimal(11,3) default NULL,
  `PriorYrDollarsSold` decimal(11,3) default NULL,
  `PriorYrCostOfGoodsSold` decimal(11,3) default NULL,
  `AveOnHandQtyAt` decimal(11,3) default NULL,
  `AveCost` decimal(11,3) default NULL,
  `QtyOnWO` decimal(11,3) default NULL,
  `QtyRequiredForWO` decimal(11,3) default NULL,
  `QtyIssuedPtd` decimal(11,3) default NULL,
  `QtyIssuedYtd` decimal(11,3) default NULL,
  `QtyIssuedPriorYr` decimal(11,3) default NULL,
  `QtySoldNextPeriod` decimal(11,3) default NULL,
  `QtyReturnedNextPeriod` decimal(11,3) default NULL,
  `DollarsSoldNextPeriod` decimal(12,2) default NULL,
  `CostOfGoodsSoldNextPeriod` decimal(12,2) default NULL,
  `QtyIssuedNextPeriod` decimal(11,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IM4_AlternateItem`
--

CREATE TABLE IF NOT EXISTS `IM4_AlternateItem` (
  `ItemNumber` varchar(15) default NULL,
  `AlternateItem1` varchar(15) default NULL,
  `AlternateItem2` varchar(15) default NULL,
  `AlternateItem3` varchar(15) default NULL,
  `AlternateItem4` varchar(15) default NULL,
  `AlternateItem5` varchar(15) default NULL,
  `AlternateItem6` varchar(15) default NULL,
  `AlternateItem7` varchar(15) default NULL,
  `AlternateItem8` varchar(15) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IMB_PriceCode_1`
--

CREATE TABLE IF NOT EXISTS `IMB_PriceCode_1` (
  `PriceCodeRecord` varchar(1) default NULL,
  `PriceCode` varchar(4) default NULL,
  `CustomerPriceLevel` varchar(1) default NULL,
  `Description` varchar(25) default NULL,
  `Method` varchar(1) default NULL,
  `BreakQty1` decimal(9,0) default NULL,
  `BreakQty2` decimal(9,0) default NULL,
  `BreakQty3` decimal(9,0) default NULL,
  `BreakQty4` decimal(9,0) default NULL,
  `BreakQty5` decimal(9,0) default NULL,
  `DiscountMarkupPriceRate1` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate2` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate3` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate4` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate5` decimal(12,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IMB_PriceCode_2`
--

CREATE TABLE IF NOT EXISTS `IMB_PriceCode_2` (
  `PriceCodeRecord` varchar(1) default NULL,
  `ItemNumber` varchar(15) default NULL,
  `CustomerPriceLevel` varchar(1) default NULL,
  `Method` varchar(1) default NULL,
  `BreakQty1` decimal(9,0) default NULL,
  `BreakQty2` decimal(9,0) default NULL,
  `BreakQty3` decimal(9,0) default NULL,
  `BreakQty4` decimal(9,0) default NULL,
  `BreakQty5` decimal(9,0) default NULL,
  `DiscountMarkupPriceRate1` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate2` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate3` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate4` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate5` decimal(12,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IMB_PriceCode_3`
--

CREATE TABLE IF NOT EXISTS `IMB_PriceCode_3` (
  `PriceCodeRecord` varchar(1) default NULL,
  `ItemNumber` varchar(15) default NULL,
  `Division` varchar(2) default NULL,
  `CustomerNumber` varchar(7) default NULL,
  `Method` varchar(1) default NULL,
  `BreakQty1` decimal(9,0) default NULL,
  `BreakQty2` decimal(9,0) default NULL,
  `BreakQty3` decimal(9,0) default NULL,
  `BreakQty4` decimal(9,0) default NULL,
  `BreakQty5` decimal(9,0) default NULL,
  `DiscountMarkupPriceRate1` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate2` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate3` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate4` decimal(12,3) default NULL,
  `DiscountMarkupPriceRate5` decimal(12,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IM_AliasItem`
--

CREATE TABLE IF NOT EXISTS `IM_AliasItem` (
  `ItemCode` varchar(15) default NULL,
  `AliasItemNo` varchar(30) default NULL,
  `Type` varchar(1) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `APDivisionNo` varchar(2) default NULL,
  `VendorNo` varchar(7) default NULL,
  `AliasItemDesc` varchar(30) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IM_ProductLine`
--

CREATE TABLE IF NOT EXISTS `IM_ProductLine` (
  `ProductLine` varchar(4) default NULL,
  `ProductLineDesc` varchar(25) default NULL,
  `ProductType` varchar(1) default NULL,
  `Valuation` varchar(1) default NULL,
  `PricingCode` varchar(4) default NULL,
  `BackOrdersAllowed` varchar(1) default NULL,
  `ExplodeKitItems` varchar(1) default NULL,
  `DetailSalesHistory` varchar(1) default NULL,
  `CalculateCommission` varchar(1) default NULL,
  `StandardUnitOfMeasure` varchar(4) default NULL,
  `PurchaseUnitOfMeasure` varchar(4) default NULL,
  `SalesUnitOfMeasure` varchar(4) default NULL,
  `ProcureTypeBuyMakeSub` varchar(1) default NULL,
  `InventoryAcctKey` varchar(9) default NULL,
  `CostOfGoodsSoldAcctKey` varchar(9) default NULL,
  `SalesIncomeAcctKey` varchar(9) default NULL,
  `ReturnsAcctKey` varchar(9) default NULL,
  `AdjustmentAcctKey` varchar(9) default NULL,
  `PurchaseAcctKey` varchar(9) default NULL,
  `TradeDiscount` varchar(1) default NULL,
  `PostInventoryByWhse` varchar(1) default NULL,
  `PostCostOfSalesByWhse` varchar(1) default NULL,
  `PostSalesIncomeByWhse` varchar(1) default NULL,
  `PostReturnsByWhse` varchar(1) default NULL,
  `PostAdjustmentByWhse` varchar(1) default NULL,
  `PostPurchaseByWhse` varchar(1) default NULL,
  `InventoryCycle` varchar(1) default NULL,
  `PrintReceiptLabels` varchar(1) default NULL,
  `PurchaseOrderVarianceAcctKey` varchar(9) default NULL,
  `ManufacturingVarianceAcctKey` varchar(9) default NULL,
  `PostPOVarianceByWhse` varchar(1) default NULL,
  `PostMFGVarianceByWhse` varchar(1) default NULL,
  `DetailReceiptHistory` varchar(1) default NULL,
  `AllocateLandedCost` varchar(1) default NULL,
  `DefaultTaxClass` varchar(2) default NULL,
  `AllowOverrideRecptCost` varchar(1) default NULL,
  `WarrantyCode` varchar(10) default NULL,
  `ReturnsAllowed` varchar(1) default NULL,
  `RestockingMethod` varchar(1) default NULL,
  `ScrapAcctKey` varchar(9) default NULL,
  `RepairsInProcessAcctKey` varchar(9) default NULL,
  `PostScrapByWhse` varchar(1) default NULL,
  `PostRepairsInProcessByWhse` varchar(1) default NULL,
  `RepairsClearingAcctKey` varchar(9) default NULL,
  `PostRepairsClearingByWhse` varchar(1) default NULL,
  `CommissionRate` decimal(8,3) default NULL,
  `BaseCommAmt` decimal(12,2) default NULL,
  `PurchaseUMConvFctr` decimal(12,4) default NULL,
  `SalesUMConvFctr` decimal(12,4) default NULL,
  `RestockingCharge` decimal(11,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PO_PurchaseOrderDetail`
--

CREATE TABLE IF NOT EXISTS `PO_PurchaseOrderDetail` (
  `PurchaseOrderNo` varchar(7) default NULL,
  `SequenceNo` varchar(14) default NULL,
  `ItemCode` varchar(15) default NULL,
  `ItemType` varchar(1) default NULL,
  `ItemDesc` varchar(30) default NULL,
  `UseTax` varchar(1) default NULL,
  `RequiredDate` varchar(8) default NULL,
  `VendorPriceCode` varchar(4) default NULL,
  `GLAcct` varchar(9) default NULL,
  `CostType` varchar(9) default NULL,
  `UnitOfMeasure` varchar(4) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `ProductLine` varchar(4) default NULL,
  `IndextoMastrkit` varchar(5) default NULL,
  `ExtDesc` varchar(1) default NULL,
  `Reschedule` varchar(1) default NULL,
  `JobNo` varchar(7) default NULL,
  `CostCOde` varchar(9) default NULL,
  `CostCodeType` varchar(1) default NULL,
  `Receiptofgoodsupdated` varchar(1) default NULL,
  `AllocateLandedcost` varchar(1) default NULL,
  `Weight` varchar(10) default NULL,
  `VendorAliasNo` varchar(30) default NULL,
  `TaxClass` varchar(2) default NULL,
  `QtyOrdered` decimal(5,3) default NULL,
  `QtyRecvd` decimal(5,3) default NULL,
  `QtyBackord` decimal(5,3) default NULL,
  `UnitCost` decimal(5,3) default NULL,
  `OrderExt` decimal(7,2) default NULL,
  `AmtRecvd` decimal(7,2) default NULL,
  `UMConvFactor` decimal(6,4) default NULL,
  `AmtInvoiced` decimal(7,2) default NULL,
  `QtyInvoiced` decimal(5,3) default NULL,
  `AllocatdAmtRec` decimal(7,2) default NULL,
  `AllocatdAmtInvcd` decimal(7,2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PO_PurchaseOrderHeader`
--

CREATE TABLE IF NOT EXISTS `PO_PurchaseOrderHeader` (
  `PurchaseOrderNo` varchar(7) default NULL,
  `PurchaseOrderDate` varchar(8) default NULL,
  `OrderType` varchar(1) default NULL,
  `MasterRepeatingOrderNo` varchar(7) default NULL,
  `RequiredExpireDate` varchar(8) default NULL,
  `APDivisionNo` varchar(2) default NULL,
  `VendorNo` varchar(7) default NULL,
  `PurchaseName` varchar(30) default NULL,
  `PurchaseAddress1` varchar(30) default NULL,
  `PurchaseAddress2` varchar(30) default NULL,
  `PurchaseAddress3` varchar(30) default NULL,
  `PurchaseCity` varchar(20) default NULL,
  `PurchaseState` varchar(2) default NULL,
  `PurchaseZipCode` varchar(10) default NULL,
  `PurchaseCountryCode` varchar(3) default NULL,
  `PurchaseAddressCode` varchar(4) default NULL,
  `ShipToCode` varchar(4) default NULL,
  `ShipToName` varchar(30) default NULL,
  `ShipToAddress1` varchar(30) default NULL,
  `ShipToAddress2` varchar(30) default NULL,
  `ShipToAddress3` varchar(30) default NULL,
  `ShipToCity` varchar(20) default NULL,
  `ShipToState` varchar(2) default NULL,
  `ShipToZipCode` varchar(10) default NULL,
  `ShipToCountryCode` varchar(3) default NULL,
  `OrderStatus` varchar(1) default NULL,
  `UseTax` varchar(1) default NULL,
  `PrintPurchaseOrders` varchar(1) default NULL,
  `OnHold` varchar(1) default NULL,
  `BatchFax` varchar(1) default NULL,
  `CompletionDate` varchar(8) default NULL,
  `ShipVia` varchar(15) default NULL,
  `FOB` varchar(15) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `ConfirmTo` varchar(30) default NULL,
  `Comment` varchar(30) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `TermsCode` varchar(2) default NULL,
  `LastInvoiceDate` varchar(8) default NULL,
  `LastInvoiceNo` varchar(10) default NULL,
  `Form1099` varchar(1) default NULL,
  `Box1099` varchar(3) default NULL,
  `LastReceiptDate` varchar(8) default NULL,
  `LastIssueDate` varchar(8) default NULL,
  `LastReceiptNo` varchar(7) default NULL,
  `LastIssueNo` varchar(7) default NULL,
  `PrepaidCheckNo` varchar(10) default NULL,
  `FaxNo` varchar(17) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `InvalidTaxCalc` varchar(1) default NULL,
  `PrepaidAmt` decimal(13,2) default NULL,
  `TaxableAmt` decimal(13,2) default NULL,
  `NonTaxableAmt` decimal(13,2) default NULL,
  `SalesTaxAmt` decimal(12,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `PrepaidFreightAmt` decimal(12,2) default NULL,
  `InvoicedAmt` decimal(13,2) default NULL,
  `ReceivedAmt` decimal(13,2) default NULL,
  `FreightSalesTaxInvAmt` decimal(13,2) default NULL,
  `BackOrderLostAmt` decimal(13,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SO_DailyShipment`
--

CREATE TABLE IF NOT EXISTS `SO_DailyShipment` (
  `InvoiceNo` varchar(7) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `SalesOrderNo` varchar(7) default NULL,
  `ShipDate` varchar(8) default NULL,
  `ShipVia` varchar(15) default NULL,
  `ShipperID` varchar(3) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `InvoiceTotal` decimal(13,2) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SO_ShippingRateDetail`
--

CREATE TABLE IF NOT EXISTS `SO_ShippingRateDetail` (
  `ShippingCode` varchar(15) default NULL,
  `ShipZone` varchar(5) default NULL,
  `GroupSort` varchar(15) default NULL,
  `ShipWeight` varchar(5) default NULL,
  `ProductLine` varchar(4) default NULL,
  `AmountUpTo` decimal(12,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `AdditionalChargePerIM` decimal(12,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SO_ShippingRateHeader`
--

CREATE TABLE IF NOT EXISTS `SO_ShippingRateHeader` (
  `ShippingCode` varchar(15) default NULL,
  `ShippingCodeDesc` varchar(30) default NULL,
  `FreightCalculationMethod` varchar(1) default NULL,
  `UseShipZone` varchar(1) default NULL,
  `UseZipCodeAsShipZone` varchar(1) default NULL,
  `UsePriorRangeOfZipCodes` varchar(1) default NULL,
  `WeightCalculation` varchar(1) default NULL,
  `LineType` varchar(1) default NULL,
  `EBMEnabled` varchar(1) default NULL,
  `BaseAmt` decimal(12,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SO_ShipToAddress`
--

CREATE TABLE IF NOT EXISTS `SO_ShipToAddress` (
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `ShipToCode` varchar(4) default NULL,
  `ShipToName` varchar(30) default NULL,
  `ShipToAddress1` varchar(30) default NULL,
  `ShipToAddress2` varchar(30) default NULL,
  `ShipToAddress3` varchar(30) default NULL,
  `ShipToCity` varchar(20) default NULL,
  `ShipToState` varchar(2) default NULL,
  `ShipToZipCode` varchar(10) default NULL,
  `ShipToCountryCode` varchar(3) default NULL,
  `TelephoneNo` varchar(17) default NULL,
  `TelephoneExt` varchar(5) default NULL,
  `FaxNo` varchar(17) default NULL,
  `BatchFax` varchar(1) default NULL,
  `BatchEmail` varchar(1) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `ContactCode` varchar(10) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ToMASAR_Customer`
--

CREATE TABLE IF NOT EXISTS `ToMASAR_Customer` (
  `ARDivisionNo` varchar(2) NOT NULL default '',
  `CustomerNo` varchar(7) NOT NULL default '',
  `CustomerName` varchar(30) default NULL,
  `AddressLine1` varchar(30) default NULL,
  `AddressLine2` varchar(30) default NULL,
  `AddressLine3` varchar(30) default NULL,
  `City` varchar(20) default NULL,
  `State` varchar(2) default NULL,
  `ZipCode` varchar(10) default NULL,
  `CountryCode` varchar(3) default NULL,
  `TelephoneNo` varchar(17) default NULL,
  `TelephoneExt` varchar(5) default NULL,
  `FaxNo` varchar(17) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `URLAddress` varchar(50) default NULL,
  `EBMEnabled` varchar(1) default NULL,
  `EBMConsumerUserID` varchar(15) default NULL,
  `BatchFax` varchar(1) default NULL,
  `DefaultCreditCardPmtType` varchar(5) default NULL,
  `ContactCode` varchar(10) default NULL,
  `ShipMethod` varchar(15) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TaxExemptNo` varchar(15) default NULL,
  `TermsCode` varchar(2) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `Comment` varchar(30) default NULL,
  `SortField` varchar(10) default NULL,
  `TemporaryCustomer` varchar(1) default NULL,
  `OpenItemCustomer` varchar(1) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `StatementCycle` varchar(1) default NULL,
  `PrintDunningMessage` varchar(1) default NULL,
  `CustomerType` varchar(4) default NULL,
  `PriceLevel` varchar(1) default NULL,
  `DateLastActivity` varchar(8) default NULL,
  `DateLastPayment` varchar(8) default NULL,
  `DateLastStatement` varchar(8) default NULL,
  `DateLastFinanceChrg` varchar(8) default NULL,
  `DateLastAging` varchar(8) default NULL,
  `DefaultItemCode` varchar(15) default NULL,
  `CreditHold` varchar(1) default NULL,
  `PrimaryShipToCode` varchar(4) default NULL,
  `DateEstablished` varchar(8) default NULL,
  `EncryptedCreditCardNo` varchar(24) default NULL,
  `DefaultPaymentType` varchar(5) default NULL,
  `EmailStatements` varchar(1) default NULL,
  `NumberOfInvToUseInCalc` decimal(2,0) default NULL,
  `AvgDaysPaymentInvoice` decimal(3,0) default NULL,
  `AvgDaysOverDue` decimal(3,0) default NULL,
  `CustomerDiscountRate` decimal(13,3) default NULL,
  `ServiceChargeRate` decimal(13,3) default NULL,
  `CreditLimit` decimal(14,2) default NULL,
  `LastPaymentAmt` decimal(14,2) default NULL,
  `HighestStmntBalance` decimal(14,2) default NULL,
  `UnpaidServiceChrg` decimal(14,2) default NULL,
  `BalanceForward` decimal(14,2) default NULL,
  `CurrentBalance` decimal(14,2) default NULL,
  `AgingCategory1` decimal(14,2) default NULL,
  `AgingCategory2` decimal(14,2) default NULL,
  `AgingCategory3` decimal(14,2) default NULL,
  `AgingCategory4` decimal(14,2) default NULL,
  `OpenOrderAmt` decimal(14,2) default NULL,
  `RetentionCurrent` decimal(14,2) default NULL,
  `RetentionAging1` decimal(14,2) default NULL,
  `RetentionAging2` decimal(14,2) default NULL,
  `RetentionAging3` decimal(14,2) default NULL,
  `RetentionAging4` decimal(14,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL,
  PRIMARY KEY  (`ARDivisionNo`,`CustomerNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ToMas_SO_SalesOrderDetail`
--

CREATE TABLE IF NOT EXISTS `ToMas_SO_SalesOrderDetail` (
  `SalesOrderNo` varchar(7) default NULL,
  `SequenceNo` varchar(14) default NULL,
  `LineKey` varchar(6) default NULL,
  `OriginalLine` varchar(1) default NULL,
  `CancelledLine` varchar(1) default NULL,
  `CancelReasonCode` varchar(5) default NULL,
  `ItemCode` varchar(15) default NULL,
  `ItemType` varchar(1) default NULL,
  `ItemCodeDesc` varchar(30) default NULL,
  `ExtendedDescriptionKey` varchar(10) default NULL,
  `Discount` varchar(1) default NULL,
  `Commissionable` varchar(1) default NULL,
  `SubjectToExemption` varchar(1) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `PriceLevel` varchar(1) default NULL,
  `DropShip` varchar(1) default NULL,
  `PrintDropShipment` varchar(1) default NULL,
  `MasterOrderLineKey` varchar(6) default NULL,
  `UnitOfMeasure` varchar(4) default NULL,
  `SalesKitLineKey` varchar(6) default NULL,
  `CostOfGoodsSoldAcctKey` varchar(9) default NULL,
  `SalesAcctKey` varchar(9) default NULL,
  `PriceOverridden` varchar(1) default NULL,
  `ExplodedKitItem` varchar(1) default NULL,
  `StandardKitBill` varchar(1) default NULL,
  `Revision` varchar(3) default NULL,
  `BillOption1` varchar(2) default NULL,
  `BillOption2` varchar(2) default NULL,
  `BillOption3` varchar(2) default NULL,
  `BillOption4` varchar(2) default NULL,
  `BillOption5` varchar(2) default NULL,
  `BillOption6` varchar(2) default NULL,
  `BillOption7` varchar(2) default NULL,
  `BillOption8` varchar(2) default NULL,
  `BillOption9` varchar(2) default NULL,
  `BackorderKitCompLine` varchar(1) default NULL,
  `SkipPrintCompLine` varchar(1) default NULL,
  `PromiseDate` varchar(8) default NULL,
  `AliasItemNo` varchar(30) default NULL,
  `TaxClass` varchar(2) default NULL,
  `CustomerAction` varchar(1) default NULL,
  `ItemAction` varchar(1) default NULL,
  `WarrantyCode` varchar(10) default NULL,
  `ExpirationDate` varchar(8) default NULL,
  `ExpirationOverridden` varchar(1) default NULL,
  `CostOverridden` varchar(1) default NULL,
  `CostCode` varchar(9) default NULL,
  `CostType` varchar(1) default NULL,
  `CommentText` varchar(2048) default NULL,
  `QuantityOrderedOriginal` decimal(16,6) default NULL,
  `QuantityOrderedRevised` decimal(16,6) default NULL,
  `QuantityShipped` decimal(16,6) default NULL,
  `QuantityBackordered` decimal(16,6) default NULL,
  `OriginalUnitPrice` decimal(16,6) default NULL,
  `LastUnitPrice` decimal(16,6) default NULL,
  `LastExtensionAmt` decimal(12,2) default NULL,
  `UnitCost` decimal(16,6) default NULL,
  `UnitOfMeasureConvFactor` decimal(12,4) default NULL,
  `QuantityPerBill` decimal(16,6) default NULL,
  `LineDiscountPercent` decimal(9,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ToMAS_SO_SalesOrderHeader`
--

CREATE TABLE IF NOT EXISTS `ToMAS_SO_SalesOrderHeader` (
  `SalesOrderNo` varchar(7) default NULL,
  `OrderDate` varchar(8) default NULL,
  `OrderStatus` varchar(1) default NULL,
  `MasterRepeatingOrderNo` varchar(7) default NULL,
  `ARDivisionNo` varchar(2) default NULL,
  `CustomerNo` varchar(7) default NULL,
  `BillToName` varchar(30) default NULL,
  `BillToAddress1` varchar(30) default NULL,
  `BillToAddress2` varchar(30) default NULL,
  `BillToAddress3` varchar(30) default NULL,
  `BillToCity` varchar(20) default NULL,
  `BillToState` varchar(2) default NULL,
  `BillToZipCode` varchar(10) default NULL,
  `BillToCountryCode` varchar(3) default NULL,
  `ShipToCode` varchar(4) default NULL,
  `ShipToName` varchar(30) default NULL,
  `ShipToAddress1` varchar(30) default NULL,
  `ShipToAddress2` varchar(30) default NULL,
  `ShipToAddress3` varchar(30) default NULL,
  `ShipToCity` varchar(20) default NULL,
  `ShipToState` varchar(2) default NULL,
  `ShipToZipCode` varchar(10) default NULL,
  `ShipToCountryCode` varchar(3) default NULL,
  `ShipVia` varchar(15) default NULL,
  `ShipZone` varchar(5) default NULL,
  `ShipZoneActual` varchar(5) default NULL,
  `ShipWeight` varchar(5) default NULL,
  `CustomerPONo` varchar(15) default NULL,
  `EmailAddress` varchar(50) default NULL,
  `ResidentialAddress` varchar(1) default NULL,
  `CancelReasonCode` varchar(5) default NULL,
  `FreightCalculationMethod` varchar(1) default NULL,
  `FOB` varchar(15) default NULL,
  `WarehouseCode` varchar(3) default NULL,
  `ConfirmTo` varchar(30) default NULL,
  `Comment` varchar(30) default NULL,
  `TaxSchedule` varchar(9) default NULL,
  `TermsCode` varchar(2) default NULL,
  `TaxExemptNo` varchar(15) default NULL,
  `RMANo` varchar(7) default NULL,
  `JobNo` varchar(7) default NULL,
  `LastInvoiceDate` varchar(8) default NULL,
  `LastInvoiceNo` varchar(7) default NULL,
  `CheckNoForDeposit` varchar(10) default NULL,
  `LotSerialLinesExist` varchar(1) default NULL,
  `SalespersonDivisionNo` varchar(2) default NULL,
  `SalespersonNo` varchar(4) default NULL,
  `SplitCommissions` varchar(1) default NULL,
  `SalespersonDivisionNo2` varchar(2) default NULL,
  `SalespersonNo2` varchar(4) default NULL,
  `SalespersonDivisionNo3` varchar(2) default NULL,
  `SalespersonNo3` varchar(4) default NULL,
  `SalespersonDivisionNo4` varchar(2) default NULL,
  `SalespersonNo4` varchar(4) default NULL,
  `SalespersonDivisionNo5` varchar(2) default NULL,
  `SalespersonNo5` varchar(4) default NULL,
  `EBMUserType` varchar(1) default NULL,
  `EBMSubmissionType` varchar(1) default NULL,
  `EBMUserIDSubmittingThisOrder` varchar(15) default NULL,
  `PaymentType` varchar(5) default NULL,
  `OtherPaymentTypeRefNo` varchar(24) default NULL,
  `CorporateCustIDPurchOrder` varchar(25) default NULL,
  `CorporateTaxOverrd` varchar(1) default NULL,
  `DepositCorporateTaxOverrd` varchar(1) default NULL,
  `CardholderName` varchar(30) default NULL,
  `ExpirationDateYear` varchar(4) default NULL,
  `ExpirationDateMonth` varchar(2) default NULL,
  `EncryptedCreditCardNo` varchar(24) default NULL,
  `Last4UnencryptedCreditCardNos` varchar(4) default NULL,
  `CreditCardAuthorizationNo` varchar(16) default NULL,
  `CreditCardTransactionID` varchar(10) default NULL,
  `AuthorizationDate` varchar(8) default NULL,
  `AuthorizationTime` varchar(6) default NULL,
  `AuthorizationCodeForDeposit` varchar(16) default NULL,
  `CreditCardTransactionIDForDep` varchar(10) default NULL,
  `PaymentTypeCategory` varchar(1) default NULL,
  `PayBalanceByCreditCard` varchar(1) default NULL,
  `FaxNo` varchar(17) default NULL,
  `CRMUserID` varchar(11) default NULL,
  `CRMCompanyID` varchar(11) default NULL,
  `CRMPersonID` varchar(11) default NULL,
  `CRMOpportunityID` varchar(11) default NULL,
  `TaxableSubjectToDiscount` decimal(13,2) default NULL,
  `NonTaxableSubjectToDiscount` decimal(13,2) default NULL,
  `TaxSubjToDiscPrcntTotSubjTo` decimal(9,3) default NULL,
  `DiscountRate` decimal(9,3) default NULL,
  `DiscountAmt` decimal(12,2) default NULL,
  `TaxableAmt` decimal(13,2) default NULL,
  `NonTaxableAmt` decimal(13,2) default NULL,
  `SalesTaxAmt` decimal(12,2) default NULL,
  `CreditCardPreAuthorizationAmt` decimal(13,2) default NULL,
  `CommissionRate` decimal(9,3) default NULL,
  `SplitCommRate2` decimal(9,3) default NULL,
  `SplitCommRate3` decimal(9,3) default NULL,
  `SplitCommRate4` decimal(9,3) default NULL,
  `SplitCommRate5` decimal(9,3) default NULL,
  `Weight` decimal(12,2) default NULL,
  `FreightAmt` decimal(12,2) default NULL,
  `DepositAmt` decimal(13,2) default NULL,
  `CreditCardPaymentBalanceAmt` decimal(13,2) default NULL,
  `DepositCorporateSalesTax` decimal(12,2) default NULL,
  `CorporateSalesTax` decimal(12,2) default NULL,
  `DateCreated` varchar(8) default NULL,
  `TimeCreated` varchar(8) default NULL,
  `UserCreatedKey` varchar(10) default NULL,
  `DateUpdated` varchar(8) default NULL,
  `TimeUpdated` varchar(8) default NULL,
  `UserUpdatedKey` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
