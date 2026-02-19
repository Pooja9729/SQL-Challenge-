use ecommercedb;
select * from product;
select * from sales;

select product_id,product_name,price from product 
order by price desc;

select product_id,product_name,price from product 
order by price desc limit 3;

select sum(sale_amount) as total_sales from sales;

select avg(sale_amount) as Average_sales from sales;

select count(sale_amount) as Total_sales_count,
	   max(sale_amount) as highest_sale_amount,
       min(sale_amount) as lowest_sale_amount 
       from sales;

select s.product_id, p.product_name,SUM(s.sale_amount) AS total_sales_amount
from sales s
join product p 
on s.product_id = p.product_id
group by s.product_id,p.product_name;

select s.product_id, p.product_name,SUM(s.sale_amount) AS total_sales_amount
from sales s
join product p 
on s.product_id = p.product_id
group by s.product_id,p.product_name
having SUM(s.sale_amount) > 50000;

select product_id,SUM(sale_amount) as total_sales
from sales
group by product_id
order by SUM(sale_amount) DESC;

select p.product_id, p.product_name,SUM(s.sale_amount) AS total_sales_amount
from product as p
join sales as s
on p.product_id = s.product_id
group by p.product_id
order by total_sales_amount desc limit 3 ;

select p.product_id, p.product_name,SUM(s.sale_amount) as total_sales_amount,avg(s.sale_amount) as Average_sales_amount
from product as p
join sales as s
on p.product_id = s.product_id
group by p.product_id
having total_sales_amount > 30000 and Average_sales_amount > 10000;





