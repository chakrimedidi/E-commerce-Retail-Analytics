select 
 order_id,
 quantity,
 CASE 
 	WHEN quantity >0 and quantity <=2 then 'Small'
	 when quantity >2 and quantity <=5 then 'Medium'
	 when quantity >5 then 'Large'
	 end as quantity_segment
from retail_orders;	 

select 
	order_id,
	unit_price_usd,
	case
		when unit_price_usd<=50 then 'Budget'
		when unit_price_usd <=150 then 'Standard'
		when unit_price_usd >150 then 'Premium'
	END as Price_segment
from retail_orders;	

select 
	 case
		when unit_price_usd<=50 then 'Budget'
		when unit_price_usd <=150 then 'Standard'
		when unit_price_usd >150 then 'Premium'
	END as Price_segment,
	count(*) as total_orders
from retail_orders
group by 
	case
		when unit_price_usd<=50 then 'Budget'
		when unit_price_usd <=150 then 'Standard'
		when unit_price_usd >150 then 'Premium'
	END
order by total_orders desc;	

