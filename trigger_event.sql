-- trigger and events 

delimiter $$
create trigger employee_insert
       after insert on employee_salary
	   for each row 
begin  
       insert employee_demographics (employee_id ,first_name,last_name)
        values (new.employee_id,new.first_name,new.last_name);
end $$ 
delimiter ;
  
  
  insert into employee_salary (employee_id,first_name,last_name,occupation,salary,dept_id)
  values (13,'jean-Ralphio','Saperstein','Exntertainment 720',1000000,null);
  
  select * 
  from employee_salary;
  
   select * 
  from employee_demographics;
  
  
  
  -- events    
  
  delimiter $$
  create event delete_retirees
  on schedule every 30 second 
  do
  begin
       delete 
       FRom employee_demographics
       where age >=60;
  
  end  $$ 
   delimiter ;