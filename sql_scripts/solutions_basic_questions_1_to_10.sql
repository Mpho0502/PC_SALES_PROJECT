
-- BASIC QUESTIONS

-- 1. Count the total number of sales records.

SELECT 
    COUNT (*) AS Total_number_of_sales_records
FROM [PC_SALES].[dbo].[pc_data];

-- 2. Count the number of sales per Continent.

SELECT Continent,
    COUNT (*) AS Sales_per_Continent
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Continent
ORDER BY Sales_per_Continent DESC;

-- 3. Count the number of sales per Country or State.

SELECT Country_or_State,
    COUNT (*) AS Sales_per_Country_or_State
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Country_or_State
ORDER BY Sales_per_Country_or_State DESC;

-- 4. List all distinct Shop Name values.

SELECT DISTINCT Shop_Name 
FROM [PC_SALES].[dbo].[pc_data];

-- 5. Find the average Sale Price.

SELECT 
    AVG(Sale_Price) AS Average_Sale_Price
FROM [PC_SALES].[dbo].[pc_data];

-- 6. Find the highest and lowest Sale Price.

SELECT 
    MAX(Sale_Price) AS Highest_Sale_Price,
    MIN(Sale_Price) AS Lowest_Sale_Price
FROM [PC_SALES].[dbo].[pc_data];

-- 7. Count the number of sales by Payment Method.

SELECT Payment_Method,
    COUNT(*) AS Sales_by_Payment_Method
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Payment_Method
ORDER BY Sales_by_Payment_Method DESC;

-- 8. Count the number of sales by Channel (Online vs Offline).

SELECT Channel,
    COUNT(*) AS Sales_by_Channel
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Channel
ORDER BY Sales_by_Channel DESC;

-- 9. Count the number of sales by Priority level.

SELECT Priority,
    COUNT(*) AS Sales_by_Priority_Level
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY Priority
ORDER BY Sales_by_Priority_Level DESC;

-- 10. Count the number of distinct PC Make values.

SELECT DISTINCT PC_Make,
    COUNT(*) AS Distinct_PC_Make_Values
FROM [PC_SALES].[dbo].[pc_data]
GROUP BY PC_Make
ORDER BY Distinct_PC_Make_Values DESC;
