select *
from employee_demographics;
#PAMDAS  for algebric evaluation
select first_name,
last_name,
age,
(age+10 )*10+10
from employee_demographics;


select distinct  first_name,
gender
from employee_demographics;