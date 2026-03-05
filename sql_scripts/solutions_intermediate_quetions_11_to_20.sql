-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

SELECT 
    SUM(Sale_Price) AS Total_revenue
FROM [PC_SALES].[dbo].[pc_data];

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

SELECT
    SUM(Sale_Price - Cost_Price) AS Total_Profit
FROM [PC_SALES].[dbo].[pc_data];

-- 13. Find the average Discount Amount.

SELECT
    AVG(Discount_Amount) AS Average_discount_amount
FROM [PC_SALES].[dbo].[pc_data];

-- 14. Calculate total Finance Amount issued.

SELECT
    SUM(CAST(Finance_Amount AS BIGINT)) AS Total_Finance_Issued
FROM [PC_SALES].[dbo].[pc_data];

-- 15. Find total revenue per PC Make.

SELECT PC_Make,
    SUM(CAST(Sale_Price - Discount_Amount AS BIGINT)) AS Total_revenue
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY PC_Make;

-- 16. Find average Sale Price per Storage Type.

SELECT Storage_Type,
    AVG(Sale_Price) AS Average_Sale_Price
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Storage_Type;

-- 17. Calculate total revenue per Shop Name.

SELECT Shop_Name,
    SUM(CAST(Sale_Price - Discount_Amount AS BIGINT)) AS Total_revenue
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Shop_Name;

-- 18. Calculate total revenue per Sales Person Name.

SELECT Sales_Person_Name,
    SUM(CAST(Sale_Price - Discount_Amount AS BIGINT)) AS Total_revenue
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Sales_Person_Name;

-- 19. Find average Credit Score per Payment Method.

SELECT Payment_Method,
    AVG(Credit_Score) AS Average_Credit_score
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Payment_Method;

-- 20. Calculate total Cost of Repairs per Sales Person Department.

SELECT Sales_Person_Department,
    SUM(CAST(Cost_of_Repairs AS BIGINT)) AS Total_Cost_of_Repairs
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Sales_Person_Department;