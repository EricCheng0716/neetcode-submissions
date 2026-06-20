-- Write your query below
select employee_id,
        CASE
            When employee_id % 2 = 1 AND name not like 'M%' THEN salary
            ELSE 0
        END AS bonus
from employees
order by employee_id