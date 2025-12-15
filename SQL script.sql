create database supplychain;
use supplychain;

-- 1. Create the Product List (Dim_Product) 

CREATE TABLE Dim_Product AS
SELECT DISTINCT 
    Product_Card_Id AS ProductID,
    Product_Name AS ProductName,
    Category_Name AS Category,
    Product_Price AS UnitCost
FROM datacosupply;

-- 2. Create the Sales Table
CREATE TABLE Fact_Sales AS
SELECT 
    Order_Item_Id AS TransactionID,
    Order_Id AS OrderID,
        -- We convert the text '1/31/2018 22:56' into a proper Date
    DATE(STR_TO_DATE(order_date_DateOrders, '%m/%d/%Y %H:%i')) AS order_date,
    shipping_date_DateOrders AS ShippingDate,
    Product_Card_Id AS ProductID,
    
    -- Metrics
    Order_Item_Quantity AS Quantity_sold,
    Sales AS Revenue,
    
    -- Logistics Data
    Days_for_shipping_real AS ActualDays,
    Days_for_shipment_scheduled AS ScheduledDays,
    Delivery_Status,
    Shipping_Mode,
    Order_City,
    Order_Country
FROM datacosupply;

