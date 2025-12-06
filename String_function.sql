-- string function ,trim   ltrim rtrim 
select length('skyfall');

select first_name,length(first_name) as len
from employee_demographics
order by len;

select upper('skyfall');
select lower('Skyfall');

select first_name,upper(first_name) as upp
from employee_demographics;

select trim('    skyfall   ');

select first_name,
left(first_name,4),
right(first_name,4) ,
substring(first_name,3,2)
birth_date,
substring(birth_date,6,2)as birth_month
from employee_demographics;

select first_name,replace(first_name,'a','z') as new_name
from employee_demographics;

select first_name,locate('An',first_name) 
from employee_demographics;

select first_name,first_name,
concat(first_name,'  ',last_name)as full_name
from employee_demographics;