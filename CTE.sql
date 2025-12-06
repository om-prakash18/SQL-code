with cte_example (Gender ,avg_sal,max_sal,min_sal,count)as(
select gender ,avg(salary),max(salary),min(salary),count(salary)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id
group by gender 
)
select *
from cte_example;


with cte_example1 as
(
select employee_id,gender,birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
cte_example2 as
(
select employee_id,salary
from employee_salary
where salary >50000
)
select *
from cte_example1 
join cte_example2
on cte_example1.employee_id=cte_example2.employee_id
;