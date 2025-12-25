SELECT 
CAST(`Order ID` AS STRING) AS Order_ID,
CAST(`Order Date` AS DATE) AS Order_Date,
CAST(`Ship Date` AS DATE) AS Ship_Date,
CAST(`Customer ID` AS STRING) AS Customer_ID,
CAST(`Postal Code` AS STRING) AS Postal_Code,
CAST(`Product ID` AS STRING) AS Product_ID,
CAST(`Sales` AS FLOAT64) AS Sales,
CAST(`Quantity` AS INTEGER) AS Quantity,
CAST(`Discount` AS FLOAT64) AS Discount,
CAST(`Profit` AS FLOAT64) AS Profit

FROM `data-project-434509.Superstore.Fact_Order`