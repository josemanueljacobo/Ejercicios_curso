SELECT 
employee_id,
concat_ws(' ', first_name, last_name),
city,
country
from employees

SELECT
p.product_id,
p.product_name,
s.company_name,
p.unit_price,
p.units_in_stock,
p.units_on_order,
p.discontinued

from products p
left join suppliers s on s.supplier_id=p.supplier_id

select
product_name,
units_in_stock
from products
where discontinued ='1'

SELECT
supplier_id,
company_name,
city,
country
from suppliers

SELECT
order_id
customer_id,
s.shipper_id
order_date,
required_date,
shipped_date
from orders o
left join shippers s on s.shipper_id=o.ship_via

select 
sum(order_id)
from orders
GROUP by 
order_id

select 
customer_id,
contact_name,
city,
country
from customers

SELECT
shipper_id,
company_name
from shippers


