CREATE TABLE IM_ItemExtDesc (ExtendedDescriptionKey VARCHAR(10),ExtendedDescription VARCHAR(100));

CREATE TABLE IM_PriceCode

(  PriceCodeRecord     varchar(1),

   PriceCode     varchar(4),

   ItemCode     varchar(30),

   CustomerPriceLevel     varchar(1),

   ARDivisionNo     varchar(2),

   CustomerNo     varchar(20),

   PriceCodeDesc     varchar(25),

   PricingMethod     varchar(1),

   BreakQuantity1     decimal(8,0),

   BreakQuantity2     decimal(8,0),

   BreakQuantity3     decimal(8,0),

   BreakQuantity4     decimal(8,0),

   BreakQuantity5     decimal(8,0),

   DiscountMarkup1     decimal(16,6),

   DiscountMarkup2     decimal(16,6),

   DiscountMarkup3     decimal(16,6),

   DiscountMarkup4     decimal(16,6),

   DiscountMarkup5     decimal(16,6)

);

ALTER TABLE IM1_InventoryMasterfile ADD COLUMN ExtendedDescriptionKey varchar(10);
