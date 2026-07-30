SHOW DATABASES;
USE diwali_sales;
SHOW TABLES;
SELECT COUNT(*) FROM sales_data;
SELECT CURRENT_USER();
CREATE DATABASE diwali_sales;
USE diwali_sales;
CREATE TABLE sales_data
(
    User_ID INT,
    Customer_Name VARCHAR(100),
    Product_ID VARCHAR(50),
    Gender VARCHAR(10),
    Age_Group VARCHAR(20),
    Age INT,
    Marital_Status INT,
    State VARCHAR(50),
    Zone VARCHAR(50),
    Occupation VARCHAR(50),
    Product_Category VARCHAR(100),
    Orders INT,
    Amount INT
);
DROP TABLE sales_data;
CREATE TABLE sales_data
(
    User_ID INT,
    Customer_Name VARCHAR(100),
    Product_ID VARCHAR(50),
    Gender VARCHAR(10),
    Age_Group VARCHAR(20),
    Age INT,
    Marital_Status INT,
    State VARCHAR(50),
    Zone VARCHAR(50),
    Occupation VARCHAR(50),
    Product_Category VARCHAR(100),
    Orders INT,
    Amount INT
);
DROP TABLE sales_data;
CREATE TABLE sales_data
(
    User_ID INT,
    Customer_Name VARCHAR(100),
    Product_ID VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Marital_Status INT,
    State VARCHAR(50),
    Zone VARCHAR(50),
    Occupation VARCHAR(50),
    Product_Category VARCHAR(100),
    Orders INT,
    Amount INT,
    Age_Group VARCHAR(20)
);
SELECT COUNT(*) AS Total_Rows
FROM sales_data;
SELECT *
FROM sales_data
LIMIT 10;
SELECT SUM(Amount) AS Total_Revenue
FROM sales_data;
SELECT SUM(Orders) AS Total_Orders
FROM sales_data;
SELECT Gender,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY Gender;
SELECT State,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Product_Category,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Sales DESC;
SELECT Occupation,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY Occupation
ORDER BY Total_Sales DESC;
SELECT Age_Group,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY Age_Group
ORDER BY Total_Sales DESC;
SELECT Marital_Status,
       SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY Marital_Status;

