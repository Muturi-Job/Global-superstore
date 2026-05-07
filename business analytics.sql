-- Profit Margin Analysis
select category,
SUM(sales) as total_sales,
SUM(profit) as total_profit,
ROUND((SUM(profit)/SUM(sales)) * 100, 2) as profit_margin_pct
from superstore
group by category
order by profit_margin_pct DESC;

-- Average order value
WITH order_totals as (
	select order_id,
    segment,
    SUM(sales) as total_order_value
from superstore
group by order_id, segment
)
select 
	segment,
    COUNT(order_id) as number_of_orders,
	ROUND(AVG(total_order_value), 2) as average_order_value
from order_totals
group by segment
order by average_order_value DESC;

-- Monthly sales trends
WITH Monthly_Totals AS (
    SELECT 
        order_month,
        order_year,
        SUM(sales) AS sales
    FROM superstore
    GROUP BY order_month
)
SELECT 
    order_month,
    order_year,
    sales,
    LAG(sales) OVER (ORDER BY order_month) AS prev_month_sales,
    -- (Current - Previous) / Previous
    ROUND(((sales - LAG(sales) OVER (ORDER BY order_month)) 
           / LAG(sales) OVER (ORDER BY order_month)) * 100, 2) AS MoM_Growth_Pct
FROM Monthly_Totals
order by order_year, order_month;

-- Top 5 customers per region
SELECT * FROM (
	SELECT 
		customer_name,
        region,
        SUM(sales) as lifetime_value,
        DENSE_RANK() OVER (PARTITION BY region ORDER BY SUM(sales) DESC) AS customer_rank
	FROM superstore
    GROUP BY customer_name, region
    order by customer_rank, region
) as ranked_customers
where customer_rank <= 5;