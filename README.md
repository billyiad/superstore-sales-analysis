# 🛒 Superstore Sales Analysis
End-to-end data analysis project using SQL to analyze sales performance and profitability.
This project demonstrates SQL-based exploratory data analysis and business insight generation.

---

## 📌 Objective

This project aims to analyze sales performance and identify key factors affecting profitability, with a focus on category performance, discount strategy, and loss analysis.

The goal is to transform raw transactional data into actionable insights that support better business decision-making.

---

## 🔄 Workflow

CSV File → Database → SQL Queries → Excel → Dashboard

---

## 🛠 Tools

* SQL (PostgreSQL)
* DBeaver
* Microsoft Excel
* CSV dataset

---

## 📊 Dataset

Superstore dataset containing transactional sales data including:

* Orders
* Customers
* Products
* Profit & Discount

---

## 📊 Key Metrics

- **Total Sales:** 2.29M  
- **Total Profit:** 286K  
- **Total Orders:** 5,009  
- **Profit per Order:** 57.17

---

## 📷 Dashboard Preview



---

## 🗄️ SQL Analysis

### Analysis Performed:
- Total Sales & Profit
- Total Orders
- Profit per Order
- Monthly Sales & Profit Trends
- Profit by Category
- Profit Margin Analysis
- Loss-making Sub-Categories
- Discount vs Profit Impact

### Example Query:
```sql
SELECT 
    TO_CHAR("Order Date", 'YYYY-MM') AS month,
    SUM("Sales") AS total_sales,
    SUM("Profit") AS total_profit
FROM superstore
GROUP BY 1
ORDER BY 1;
```
📁 All queries are available in the /sql folder

---

## 📈 Dashboard Features
- KPI summary cards
- Profit by Category
- Profit Margin comparison
- Top Sub-Category Loss
- Monthly Sales & Profit Trend (2014–2017)
- Discount vs Profit analysis

---

## 🔍 Key Insights

- The business demonstrates consistent growth from 2014 to 2017, with increasing sales and profit over time.
- Peak performance occurs in the final quarter (Q4), especially in November and December.
- The Consumer segment contributes the highest profit, indicating strong individual customer demand.
- Technology and Office Supplies maintain healthy profit margins (~17%), while Furniture shows significantly lower profitability (~2.5%).
- Losses are concentrated in specific sub-categories, particularly Tables, which is the largest source of negative profit.
- High discount levels are strongly correlated with losses. Profit becomes negative when discounts exceed ~30%.
- Some months show negative profit, suggesting inefficiencies in discount or promotional strategies.

---

## 💡 Recommendations

- Limit discounts above 30%, as they consistently lead to losses.
- Re-evaluate pricing strategies for Furniture products, especially Tables and Bookcases.
- Focus on high-margin categories such as Technology to improve overall profitability.
- Leverage Q4 seasonal trends by optimizing inventory and marketing campaigns.
- Investigate months with negative profit to identify operational inefficiencies.
---

## 🧠 Skills Demonstrated
- Data Import & Preparation
- SQL Querying (Aggregation, Grouping)
- Data Transformation
- Data Visualization
- Dashboard Design
- Business Insight Extraction

---

## 📁 Project Structure

* `sql/analysis.sql` → SQL queries
* `data/` → dataset
* `images/` → visualizations

---

## 💼 Business Value

This analysis helps identify profitability drivers and inefficiencies, enabling better decisions in pricing, discount strategy, and product focus.

---

## 🚀 Author

Billy Ibrahim
