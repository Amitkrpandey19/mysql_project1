Create Database Myproject1;
show databases;
use Myproject1;
create table retail_sales(
transactions_id int,
	sale_date Date,
	sale_time	Time,
    customer_id	int,
    gender varchar(15),
	age	int,
    category	varchar(15),
    quantiy	int,
    price_per_unit	float,
    cogs	float,
    total_sale float
    );
ALTER TABLE retail_sales
ADD PRIMARY KEY (transactions_id);

select * from retail_sales;
select count(*) from retail_sales;
SELECT 
    *
FROM
    retail_sales
WHERE
    transactions_id IS NULL
        OR sale_date IS NULL
        OR sale_time IS NULL
        OR customer_id IS NULL
        OR gender IS NULL
        OR age IS NULL
        OR category IS NULL
        OR quantiy IS NULL
        OR price_per_unit IS NULL
        OR cogs IS NULL
        OR total_sale IS NULL;
    DELETE FROM retail_sales 
    WHERE
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
   SELECT 
    *
FROM
    retail_sales;
   # how many sales we have
SELECT 
    COUNT(*) AS total_sales
FROM
    retail_sales;
    
# how many customer we have
SELECT 
    COUNT(distinct customer_id) AS total_sales
FROM
    retail_sales;
   # How many category we have
   
  SELECT 
    COUNT(distinct category) AS total_sales
FROM
    retail_sales;  
    # Find out the category from the stores
SELECT DISTINCT
    category
FROM
    retail_sales;
    #1.	How many total transactions are recorded?
SELECT COUNT(*) AS total_transactions
FROM retail_sales;
# 2.	What is the total revenue (total_sale) generated?
SELECT 
    SUM(total_sale) AS total_revenue
FROM
    retail_sales;
  #  3.	How many unique customers are in the dataset?
 SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales;
#5.	What is the count of male vs. female customers?
Select gender, count(*) as count  from retail_sales group by gender;

# 6.	What is the average age of customers?
select gender , round(avg(age),2) as Average_age from retail_sales group by gender;
SELECT 
  CASE
    WHEN age < 20 THEN 'Under 20'
    WHEN age BETWEEN 20 AND 30 THEN '21-30'
    WHEN age BETWEEN 31 AND 40 THEN '31-40'
    WHEN age BETWEEN 41 AND 50 THEN '41-50'
    ELSE '51+'
  END AS age_group,
  AVG(total_sale) AS average_spent
FROM retail_sales
GROUP BY age_group
ORDER BY average_spent DESC;
# Write a query to retrieve all columns for sales made  on "2022-11-05"
select * from retail_sales where sale_date="2022-11-05";
# Write a SQL query to retrieve all transactions the cateory is clothing and the quantity sold is  more than 10 in the month of november 2022
SELECT 
    *
FROM
    retail_sales
WHERE
    category = 'Clothing' and sale_date between '2022-11-01' and '2022-11-30';
    #Disclaimer Quantiy is not greater than 10.
# Write a SQL query to calculate the total sales for each category
SELECT 
    category, SUM(quantiy) AS total_Sales
FROM
    retail_sales
GROUP BY category;
# Write a SQL to find the average age of customers who purchased items from the beauty category
SELECT 
    category, ROUND(AVG(age), 2) AS Average_age
FROM
    retail_sales
WHERE
    category = 'Clothing';
    # Write a query to find the all transactions where the tatal sale is greater than 1000
    select * from retail_sales where total_sale>1000;
    # Write a SQL query to find the total number of transactions made by each gender in each category;
  SELECT 
    category, gender, COUNT(*) AS total_transactions
FROM
    retail_sales
GROUP BY gender , category;
       
    
