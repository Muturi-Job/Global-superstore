## 🛒 Global Superstore Business Intelligence Dashboard
## 📌 Project Overview
This project is an intermediate-level Power BI dashboard designed to analyze the sales, profitability, and operational efficiency of a fictitious global retail chain (Global Superstore).

Rather than just displaying data, this project focuses on data storytelling—identifying root causes of profit loss and providing actionable business recommendations to improve the company's bottom line.

## 🛠️ Tools & Technologies Used
Power BI Desktop: Data visualization, interactive dashboard design.

DAX (Data Analysis Expressions): Custom measure creation for dynamic KPIs, YoY tracking, and conditional formatting.

Power Query: Data cleaning and transformation.

## 📊 Dashboard Structure
The report is structured into three distinct pages to guide the user from a macro-level executive view down to micro-level customer interventions.

## Page 1: Executive Overview
Provides a high-level summary of company health and geographical performance.

Dynamic KPI Banner: Tracks Total Sales, Total Profit, Profit Margin %, and Order Count.

Global Profitability Map: Uses conditional formatting to highlight profitable (blue) vs. unprofitable (red) markets.

Annual Trends: A combo chart revealing that while Q4 drives the highest sales volume, profit margins often dip simultaneously.

<img width="1367" height="712" alt="image" src="https://github.com/user-attachments/assets/02164539-d739-44f7-9c6f-3168beeab1ed" />

## Page 2: Operations & Product Profitability
Diagnoses the root causes of profit loss, focusing on product categories and discounting strategies.

Discount vs. Profit Margin Scatter Plot: Features a critical DAX-driven break-even reference line (Y=0) to expose the "20% discount death zone."

Product Performance Matrix: Utilizes background conditional formatting to instantly flag unprofitable product sub-categories.

Shipping Logistics: Analyzes average delivery times across varying order priorities.
<img width="1350" height="757" alt="image" src="https://github.com/user-attachments/assets/61217d7a-b290-4e46-9f66-dd320d1fe5e6" />

## Page 3: Customer Insights
Focuses on customer segmentation and identifying high-risk client accounts.

AI Decomposition Tree: Allows stakeholders to dynamically drill down from Total Profit into Market > Region > Segment > Category to find exact profit drivers.

Customer Value Matrix: A scatter plot identifying high-volume buyers who are costing the company money due to heavy bulk discounting.
<img width="1348" height="756" alt="image" src="https://github.com/user-attachments/assets/0481e495-3c85-4a19-a6af-d0b0a22fa41f" />


## 💡 Key Business Insights
Revenue is Growing, but Efficiency is Slipping: While total sales volume grew consistently between 2011 and 2014, the overall Profit Margin peaked in 2013 (~11.95%) and began declining in 2014 (~11.72%).

The 20% Discount "Death Zone": The scatter plot analysis reveals a hard mathematical threshold: any product sub-category with an average discount exceeding 20% drops into a negative profit margin, effectively erasing the value of the sale.

Furniture is a Profit Bleeder: Despite high sales volumes, the Furniture category barely breaks even compared to Technology and Office Supplies. Specific items within this category are operating at a net loss globally.

The "Parasite" Customers: The Customer Value Matrix identified a dangerous cluster of B2B/Corporate clients who purchase high volumes ($10K–$30K) but generate negative profit (-$2K to -$5K) due to aggressive negotiated discounts.

## 🚀 Actionable Recommendations
Based on the data, I recommend the following strategic interventions to executive leadership:

Institute a Strict 15% Discount Cap: Update the global pricing policy to lock maximum sales discounts at 15% across all regions. This leaves a 5% safety buffer before hitting the 20% negative-profit threshold while keeping sales teams competitive.

Overhaul the Furniture Strategy: Place an immediate freeze on discounting the Furniture category. Conduct a vendor audit to lower wholesale and shipping costs. If margins cannot be improved, consider sunsetting the lowest-performing SKUs (e.g., Tables).

Restructure Unprofitable Client Accounts: The sales team must immediately audit the high-volume/negative-profit customers identified on Page 3. These clients must be moved to standard pricing tiers, or their shipping must be restricted to "Standard Class" to recover logistical costs.
