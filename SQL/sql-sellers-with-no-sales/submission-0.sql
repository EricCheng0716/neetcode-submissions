-- Write your query below
select s.seller_name
from seller s
where s.seller_id NOT IN (
    select distinct seller_id
    from orders
    where sale_date >= '2020-01-01'
    and sale_date <= '2020-12-31'
)
order by s.seller_name