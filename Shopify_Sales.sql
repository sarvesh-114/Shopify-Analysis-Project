use project;
select * from Shopify_Sales;

#1. What are the total sales and order counts by month?
select order_month, sum(total_price_usd)
from shopify_sales
group by order_month
order by order_month desc;

select order_month, count(order_number)
from shopify_sales
group by order_month
order by order_month desc;

#2. Which months, weekdays, or hours drive the highest revenue?
select order_day, floor(sum(total_price_usd))
from shopify_sales
group by order_day;

select order_hour, floor(sum(total_price_usd))
from shopify_sales
group by order_hour
order by order_hour asc;

#3. Which product types generate the most revenue or volume?
select product_type, floor(sum(total_price_usd)) as total_revenue
from shopify_sales
group by product_type
order by total_revenue desc;

#4. What is the average order value per product category?
select product_type, floor(avg(total_price_usd)) as avg_sales
from shopify_sales
group by product_type
order by avg_sales desc;

#5. Who are the top 10 customers by lifetime value?
select customer_id, billing_address_first_name,billing_address_last_name, sum(subtotal_price) as total_revenue
from shopify_sales
group by customer_id,billing_address_first_name,billing_address_last_name
order by total_revenue desc
limit 10;

#6. How many repeat customers exist?
SELECT  COUNT(*) AS repeat_customers
FROM (
    SELECT customer_id
    FROM shopify_sales
    GROUP BY customer_id
    HAVING COUNT(*) > 1
) AS repeated;

#7. Which cities/states bring in the most sales?
select billing_address_province, round(sum(total_price_usd), 2) as total_revenue
from shopify_sales
group by billing_address_province
order by total_revenue desc;

#8. What percentage of orders use each payment gateway?
SELECT 
    gateway,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM shopify_sales
GROUP BY gateway
order by percentage desc;

#9. What’s the average tax percentage applied per product or region?
select billing_address_province, avg(tax_percentage) as avg_tax
from shopify_sales
group by billing_address_province
order by avg_tax desc;






