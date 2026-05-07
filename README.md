# 🛒 Global Superstore: End-to-End Data Analysis 
## 📌 Project Overview
This project is a complete end-to-end data analysis of the fictitious "Global Superstore" retail dataset. The primary objective is to analyze global sales, operational efficiency, and product profitability to uncover the root causes of profit leaks and provide actionable business recommendations.

This project demonstrates a full data pipeline: data cleaning in Python, relational database modeling in SQL, and business intelligence visualization in Power BI.

## 🛠️ Tech Stack & Architecture
Language: Python (Pandas, NumPy)

Database: SQL (PostgreSQL / MySQL)

Visualization: Power BI Desktop, DAX

Workflow: Jupyter Notebooks, SQL Server Management Studio / pgAdmin

## Data Pipeline Flow:
Raw CSV ➔ Python (Cleaning & EDA) ➔ SQL Database (Storage & Querying) ➔ Power BI (Dashboarding & Storytelling)

## 📂 Phase 1: Data Cleaning & Preprocessing (Python)
The raw dataset contained over 50,000 records of transactional data that required significant formatting before analysis.

Key transformations using Pandas:

Handling Missing Data: Imputed missing Postal Code values based on City/State combinations.
                                          
Data Type Conversion: Converted Order Date and Ship Date from strings to proper datetime objects for time-series analysis.

String Formatting: Stripped leading/trailing whitespace from categorical columns (Customer Name, Sub-Category) to prevent duplicate aggregations.

Feature Engineering: Calculated Delivery Time (Days) by finding the delta between Order Date and Ship Date.

## 🗄️ Phase 2: Database Modeling (SQL)
To simulate a real-world enterprise environment, the cleaned Pandas DataFrame was pushed to a relational SQL database.

Key SQL Tasks:

Designed a normalized relational schema (Star Schema format) extracting the flat CSV into Dim_Customers, Dim_Products, Dim_Location, and Fact_Orders tables.

Wrote exploratory SQL queries to validate data integrity and calculate initial aggregations (e.g., identifying top revenue-generating cities).

## 📊 Phase 3: Business Intelligence (Power BI)
The SQL database was connected directly to Power BI using DirectQuery/Import mode. The dashboard is structured across three pages to guide stakeholders from a macro-level overview down to granular, actionable insights.

1. Executive Overview
Provides a high-level summary of company health and geographical performance.

Dynamic KPI Banner: Tracks Total Sales ($12.6M), Total Profit ($1.47M), and Profit Margin (11.9%).

Annual Trends: A combo chart revealing that while Q4 drives the highest sales volume, profit margins often dip simultaneously due to holiday discounting.

2. Operations & Product Profitability
Diagnoses the root causes of profit loss, focusing on product categories and discounting strategies.

Discount vs. Profit Scatter Plot: Features a critical DAX-driven break-even reference line (Y=0) to expose profitability thresholds.

Product Performance Matrix: Utilizes background conditional formatting to instantly flag unprofitable product sub-categories (Red/Green indicators).

3. Customer Insights
Focuses on customer segmentation and identifying high-risk client accounts.

AI Decomposition Tree: Allows stakeholders to dynamically drill down from Total Profit into Market > Region > Segment > Category.

Customer Value Matrix: Identifies high-volume buyers who are costing the company money due to heavy bulk discounting.

## 🏃‍♂️ How to Run This Project
Clone this repository: git clone git@github.com:Muturi-Job/Global-superstore.git

Open the Jupyter Notebook in the /scripts folder to view the Python data cleaning process.

Use the schema.sql file in the /sql folder to build the database architecture.

Open the Global_Superstore_Dashboard.pbix file in Power BI Desktop to interact with the visualizations.
