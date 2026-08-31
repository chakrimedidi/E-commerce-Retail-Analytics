select 
	order_id,
	net_sales_usd,
	CASE
		WHEN net_sales_usd < 50 THEN 'Low Value'
		WHEN net_sales_usd <=100 THEN 'Medium Value'
		ELSE 'High Value'
	END AS order_value_segment
FROM retail_orders;	

Select 
	order_id,
	discount_percent,
	CASE 
		WHEN discount_percent =0 THEN 'No Discount'
		WHEN discount_percent <=10 THEN 'Low Discount'
		WHEN discount_percent <=25 THEN 'Medium Discount'
		ELSE 'High Discount'
	END AS discount_segment
FROM retail_orders;	

select 
	CASE
		WHEN net_sales_usd < 50 THEN 'Low Value'
		WHEN net_sales_usd <=100 THEN 'Medium Value'
		ELSE 'High Value'
	END AS order_value_segment,
	COUNT(*) AS total_orders
FROM retail_orders
GROUP BY 
	CASE
		WHEN net_sales_usd < 50 THEN 'Low Value'
		WHEN net_sales_usd <=100 THEN 'Medium Value'
		ELSE 'High Value'
	END
ORDER BY total_orders desc;

select 
	CASE 
		WHEN discount_percent < 0 THEN 'No Discount'
		WHEN discount_percent <=10 THEN 'Low Discount'
		WHEN discount_percent <=25 THEN 'Medium Discount'
		ELSE 'High Discount'
	END AS discount_segment,
	COUNT(*) AS total_orders
FROM retail_orders
GROUP BY 
	CASE 
		WHEN discount_percent < 0 THEN 'No Discount'
		WHEN discount_percent <=10 THEN 'Low Discount'
		WHEN discount_percent <=25 THEN 'Medium Discount'
		ELSE 'High Discount'
	END
ORDER BY total_orders DESC;	
	

WITH classified_orders AS (

    SELECT
        *,
        CASE
            WHEN net_sales_usd < 50 THEN 'Low Value'
            WHEN net_sales_usd <= 150 THEN 'Medium Value'
            ELSE 'High Value'
        END AS order_value_segment

    FROM retail_orders
)

SELECT
    order_value_segment,
    COUNT(*) AS total_orders,
    SUM(net_sales_usd) AS total_sales
FROM classified_orders
GROUP BY order_value_segment
ORDER BY total_sales DESC;	


select
	order_id,
	customer_rating,
	CASE 
		WHEN customer_rating <3 THEN 'Poor'
		WHEN customer_rating =3 THEN 'Average'
		WHEN customer_rating >=4 THEN 'Good'
		ELSE 'No Rated'
	END AS rating_segment
FROM retail_orders;	
	
select 
	order_id,
	order_status,
	CASE 
		WHEN order_status = 'Delivered' THEN 'Completed'
		WHEN order_status IN ('Pending','Shipped') THEN 'In Progress'
		WHEN order_status IN ('Returned','Cancelled') THEN 'Unsuccessful'
		ELSE 'Unknown'
	END AS order_status_segment
FROM retail_orders;	


select 
 count(*) as total_orders,
 sum(
 	case
		when order_status='Delivered' then 1
		else 0
	end 
 )as delivered_orders,
 sum(
	case 
		when order_status='Cancelled' then 1
		else 0
	end	
 )as canceled_orders,
sum(
 	case
		when order_status='Delivered' then 1
		else 0
	end
 )*100.0/ count(*) as delivery_rate,
 sum(
	case 
		when order_status='Cancelled' then 1
		else 0
	end
 )*100.0/count(*) as cancellation_rate

 from retail_orders;