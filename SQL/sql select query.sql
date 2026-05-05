use hotwax_system;
show tables;
select * from employee;
select salary from employee where department='it';
select  sum(salary) as total_it from employee where department='it' ;
select * from employee where department = 'it';
select * from employee where location ='INDORE';
select count(emp_name) AS total_employe ,department from employee group by department;
select sum(salary) as total_salary,department from employee group by department ;
select * from employee where salary= (select max(salary) from employee);
select *from employee where salary = (select min(salary) from employee);
select avg(salary) from employee;
select avg(salary) from employee where department='hr';
select * from employee where salary between 30000 and 40000;
select department,max(salary) from employee group by department;
select department , min(salary) from employee group by department;

select max(salary) from employee ;
select * from employee order by salary DESC limit 3;
select * from employee order by salary DESC limit 1 offset 1 ;
select location,count(*) from employee group by location;
select location, avg(salary) from employee group by location;

select avg(salary) from employee ;
select * from Employee where salary < (select avg(salary) from employee);

select department , max(salary)-min(salary) from employee group by department;
select * from employee where emp_name like 'A%';
select * from employee order by salary DESC limit 5 ;
select * from employee order by salary DESC;
select sum(salary) from employee;
select emp_name, department ,salary,(salary/(select sum(salary) from employee)) * 100 from employee;

select emp_name ,length(emp_name) from employee;	
select distinct department from employee;
select distinct department from employee 
where lower(right(department,1)) NOT IN ('a','e','i','o','u');

select distinct department from employee 
where lower(SUBSTR(department,1,1)) NOT IN ('a','e','i','o','u');

select distinct department from employee 
where lower(SUBSTR(department,1,1)) NOT IN ('a','e','i','o','u')
AND lower(SUBSTR(department,length(department),1)) NOT IN ('a','e','i','o','u');

select emp_name from employee where salary >25000 order by substr(emp_name,length(emp_name)-2,3),emp_id;





