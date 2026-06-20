-- Write your query below
select s.name
from sales_person s
where s.sales_id NOT IN (
    select o.sales_id
    from orders o
    left join company c on o.com_id = c.com_id
    WHERE c.name = 'CRIMSON'
)