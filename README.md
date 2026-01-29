# SQL Server Northwind Business Analysis: Business Value Extraction

This repository presents a collection of **T-SQL queries** executed against the **Northwind Traders** sample database. The project is designed to showcase the ability to translate strategic business questions into structured, efficient SQL queries, providing direct, actionable insights for decision-makers.

The focus is on **metric consolidation, inventory tracking, and identifying customer retention opportunities.**

## 🛠️ Tools and Environment

* **Database Engine:** Microsoft SQL Server
* **Query Language:** T-SQL (Transact-SQL)
* **Development Environment:** Visual Studio Code (VS Code)

## 🎯 Key Skills Demonstrated

This portfolio demonstrates proficiency in core relational database concepts, essential for any Data Analyst or Business Intelligence role:

* **Metric Aggregation:** Mastery of `SUM`, `AVG`, and `COUNT DISTINCT` to build robust KPIs.
* **Relational Data Integrity:** Effective use of **INNER JOIN** and **LEFT JOIN** to accurately link business entities (Customers, Orders, Products).
* **Data Filtering and Quality:** Use of `WHERE IS NOT NULL` to ensure reliable reporting metrics.
* **Temporal Analysis:** Application of date functions (`DATEDIFF`, `GETDATE()`) to measure customer activity over time.

## 💡 Projects and Business Cases

### 📁 01_Key_Performance_Indicators.sql: Sales Dashboard Metrics
* **Business Question:** What are our current sales, volume, and customer base metrics?
* **Insight:** A single, efficient query that calculates **Total Revenue**, **Total Units Sold**, **Total Orders**, **Total Active Customers**, and **Average Products per Order**. This is the core data for any executive dashboard.

### 📁 02_Inventory_Value_Analysis.sql: Reliable Inventory Valuation
* **Business Question:** What is the total monetary value of our reliable inventory?
* **Insight:** Filters the data to include only products with valid `UnitPrice` and `UnitsInStock` values, then calculates the **total Inventory Value** (`UnitsInStock * UnitPrice`). This provides management with a clear, trustworthy metric of asset value.

### 📁 03_Customer_Inactivity_Analysis.sql: Identifying Churn Risk
* **Business Question:** Which customers have not placed an order in the last 12 months, indicating a high risk of churn?
* **Insight:** Uses a **LEFT JOIN** combined with `DATEDIFF` and `HAVING IS NULL` logic to accurately identify **all inactive customers**, providing a targeted list for retention and marketing campaigns.

---

### **How to Run**

The queries are written in T-SQL and should be executed against an instance of the Northwind database in Microsoft SQL Server.
