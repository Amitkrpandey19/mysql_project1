# 🏦 Retail Sales Data Analysis Using SQL

This repository contains a collection of real-world SQL queries for analyzing retail sales data. It's designed for aspiring data analysts and professionals transitioning to data roles, showcasing practical SQL usage with retail data.

---

## 📊 Dataset Overview
The dataset includes:
- Transaction IDs
- Dates and times of sales
- Customer demographics (gender, age)
- Product category, quantity sold, price
- Cost of goods sold (COGS) and total sale amount

Location: `data/SQL - Retail Sales Analysis_utf.csv`

---

## 📃 SQL Query Files
All queries are saved under the `queries/` folder:

| File Name                          | Description                                       |
|-----------------------------------|---------------------------------------------------|
| 01_total_transactions.sql         | Count total number of transactions                |
| 02_total_revenue.sql              | Sum of all total_sales (revenue)                 |
| 03_unique_customers.sql           | Count of unique customers                        |
| 04_distinct_categories.sql        | List distinct product categories                 |
| 05_gender_transaction_count.sql   | Count transactions by gender                     |
| 07_age_group_avg_spending.sql     | Average spending by age group                    |
| 08_high_quantity_clothing_nov.sql | Clothing category sales with quantity > 10 in Nov 2022 |
| 09_category_total_sales.sql       | Total revenue per product category               |
| 10_total_sales_above_1000.sql     | Transactions with total_sale > 1000              |
| 11_gender_category_transactions.sql| Count by gender and category (multi-row format) |
| 12_gender_split_per_category.sql  | Male vs Female transactions per category (pivot style) |
| cleanup_and_primary_key.sql       | Delete nulls and set transactions_id as primary key |

---

## 📁 Folder Structure
```
retail-sales-sql-analysis/
│
├── README.md
├── data/
│   └── SQL - Retail Sales Analysis_utf.csv
├── queries/
│   ├── 01_total_transactions.sql
│   ├── ...
│   └── cleanup_and_primary_key.sql
└── assets/
    └── [Optional: charts or screenshots]
```

---

## 📅 How to Use
1. Clone the repository.
2. Open MySQL Workbench.
3. Import the CSV file into a table named `retail_sales`.
4. Execute any `.sql` file from the `queries/` folder.
5. Optionally export results to CSV or Excel from MySQL Workbench.

---

## 📚 Learning Highlights
- Grouping, aggregation, filtering, conditional logic in SQL
- Real-world use cases for retail analytics
- Pivot-style analysis with CASE WHEN
- Clean and prepare data before analysis

---

## 🚀 Future Additions
- Joins with customer/product master tables
- Monthly trend analysis
- Advanced SQL: Window functions, CTEs

---

## 🤝 Let's Connect
If you're learning SQL or building data projects, feel free to fork or star this repo, or contribute!

