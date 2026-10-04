-- see data of orders table
select*from orders;

-- Total orders 
select count(*) as Tota_order
from orders;

-- Total sales
select sum(net_amount)  as total_sales
from orders;

-- Top produt
select product,sum(net_amount) as top_product
from orders
group by product
order by top_product desc limit 1;


-- Top city
select city,sum(net_amount) as top_city
from orders 
group by city
order by top_city desc limit 1;

-- month by sale
select month,sum(net_amount) as month_sales
from orders
group by month;

--  highest profit product
select product,sum(profit) as high_profit_product
from orders
group by product
order by  high_profit_product desc limit 1;


-- payment mode distribution
select payment_mode,count(*) as payment_mode_distribution
from orders
group by payment_mode;


-- cancle orders
select*from orders
where order_status='Cancelled';


-- 