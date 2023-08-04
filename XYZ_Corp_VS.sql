/* my name is Vasundhra and id is 001231074
create database XYZ_Corp;
create table departments(
department_id int primary key,
department_name varchar(30),
location_id int
);


create table managers (
manager_id int primary key,
first_name varchar(30),
last_name varchar(30)
);


create table employees(
employee_id int primary key,
first_name varchar(20),
last_name varchar(25),
email varchar(25) Unique,
phone_number varchar(20),
hire_date date,
job_id varchar(10),
salary int , 
commission_pct int ,
manager_id int,
department_id int,
FOREIGN KEY (manager_id) REFERENCES managers(manager_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


insert into departments values
(20,'Marketing',180);
insert into departments values
(30,'purchasing',1700),
(40,'Human Resources',2400),
(50,'shipping',1500),
(60,'IT',1400),
(70,'public relations',2700),
(80,'sales',2500),
(90,'executive',1700),
(100,'finance',1700),
(110,'accounting',1700),
(120,'Treasury',1700),
(130,'Corporate Tax',1700),
(140,'Control and Credit',1700),
(150,'shareholder services',1700),
(160,'Benefits',1700),
(170,'Insurance',1900);
*/
/*


insert into employees values
(100,'Steven', 'king','sking','515.123.4567','1987-06-17','ad_pres',24000,null,null,20);

insert into employees values
(101,'neena','kochhar','nkochaar','515.123.4568','1989-11-21','ad_vp',17000,null,100,20);
*/
/*



insert into employees values
(102,'lex','de haan','ldehaan','515.123.4569','1993-09-12','ad_vp',17000,null, 100,30),
(103,'alexander','hunold','ahunold','590.423.4567','1990-09-30','it_prog' ,9000,null,102,60),
(104,'Bruce','Ernst','bernst','590.423.4567','1990-09-30','it_prog' ,6000, null, 103,60),
(105,'david','austin','daustin','590.423.4569','1997-06-25','it_prog' ,4800,null,103,60),
(106,'vali','patabala','vpatabal','590.423.4560','1998-02-05','it_prog' ,4800,null,103,40),
(107,'diana','Lorentz','dlorentz','590423.5567','1992-02-09','it_prog' ,4200,null,103,40),
(108,'nancy','greenberg','ngreenbe','515.124.4569','1994-08-17','Fi_mgr',12000,null,101,100),
(109,'daniel','faviet','dfaviet','515.124.4169','1994-08-12','Fi_Account',9000,null, 108,170),
(110,'john','chen','jchen','515.124.4269','1997-04-09','Fi_Account',8200,null,108,170),
(111,'isamel','sciarra','isciarra','515.124.4369','1997-02-01','Fi_Account',7700,null,108,160),
(112,'jose manuel','umman','jmurman','515.124.4469','1998-06-03','Fi_Account',7800,null,108,150),
(113,'luis','popp','lpopp','515.124.4567','1999-12-07','Fi_Account',6900,null,108,140),
(114,'den','raphaely','drapheal','515.127.4561','1994-11-08','PU_MAN',11000,null,100,30);

*/
/*


INSERT INTO managers 
VALUES
  (100, 'vasundhra', 'sharma'),
  (101, 'Jane', 'Smith'),
  (102, 'alexander','hunold'),
  (103, 'den','raphaely'),
  (104, 'William', 'Brown'),
  (105, 'jose','umman'),
  (106, 'John', 'brar'),
  (107, 'Sophia', 'kaur'),
  (108, 'Benjamin', 'sharma');
  */


  /*
  SELECT first_name, last_name, job_id, salary
FROM employees
WHERE department_id BETWEEN 20 AND 40;

*/


/*
SELECT employee_id, first_name, email, phone_number, hire_date
FROM employees
WHERE first_name LIKE 'S%';

*/


/*
SELECT top 1 *
FROM employees
ORDER BY salary DESC
;
*/

/*delete from employees where employee_id=114;
select * from employees;

*/

/*
update employees set email='Den_Raphaely' where employee_id=114;

select * from employees order by salary asc;


select * from employees order by salary desc;*/
/*

select e.* ,
m.first_name,
m.last_name 
from employees e 
join
managers m on e.manager_id = m.manager_id
where m.manager_id=100;
*/

/*
SELECT department_id, COUNT(*) AS No_Of_employees
FROM employees
GROUP BY department_id;
*/


/*
SELECT COUNT(*) AS no_of_employees
FROM employees
WHERE manager_id = 108;
*/


/*
select * from employees where first_name like '%an%';

*/


/*
SELECT *
FROM employees
WHERE month(hire_date) = 8 AND year(hire_date) = 1994;

*/

select e.employee_id, e.first_name,e.last_name,e.phone_number,d.department_name
from employees e 
join
departments d on e.department_id=d.department_id
where e.salary>( select avg(salary) from employees);


