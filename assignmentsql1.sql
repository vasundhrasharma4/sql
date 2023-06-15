#create database employeeDB;
use employeesDB;
/*create table Employeee(
emp_num char (3) ,
emp_lname varchar(15) not null,
emp_fname varchar(15) not null,
emp_initial char(1) not null,
emp_hiredate date not null,
job_code char(3) not null,
primary key (emp_num)
);

insert into Employeee values 
(101, "News","John","G","2000-11-08",502),
(102, "Senior","David","H","1989-07-12",501),
(103, "Arbough","June","E","1996-12-01",500),
(104, "Ramoras","Anne","K","1987-11-15",501),
(105, "JOhnson","Alice","K","1993-02-01",502),
(106, "Smithfield","William","","1904-06-22",500),
(107, "Alonzo","Maria","D","1996-10-10",500),
(108, "Washington","Ralph","B","1991-08-22",501),
(109, "Smith","Larry","W","1997-07-18",501);*/
#select * from employeee;

# e. Write the SQL code to change the job code to 501 for the person whose personnel number is 107. 
#After you have completed the task, examine the results
# and then reset the job code to its original value.
/*update Employeee
set job_code =501
where emp_num= 107;*/
#Select * from employeee;
#rechanging 
/*update Employee
set job_code =500
where emp_num= 107;*/

#f. Assuming that the data shown in the Employee table have been entered,
# write the SQL code that lists all attributes for a job code of 502.
#Select * from Employee where job_code=502;

#g.Write the SQL code to delete the row for the person named William Smithfield, who was hired on June 22, 2004,
# and whose job code classification is 500. (Hint: Use logical operators to include all the information given in this problem.)

/*delete  from Employeee where emp_lname="Smithfield" and job_code=500;
Select * from Employee;*/

#h.Add the attributes EMP_PCT and PROJ_NUM to the Employee table.
# The EMP_PCT is the bonus percentage to be paid to each employee.

#alter table Employeee add ept_pct varchar(5);
#alter table employeee add proj_num varchar(8);
#Select * from Employeee;

# i. Using a single command, write the SQL code that will
# enter the project number (PROJ_NUM) = 18 for all employees whose job classification (JOB_CODE) is 500.

#update Employeee set ept_pct=18 where job_code=500;
#Select * from Employeee;

#j. Using a single command, write the SQL code that will 
#enter the project number (PROJ_NUM) = 25 for all employees whose job classification (JOB_CODE) is 502 or higher.

#update Employeee set proj_num=25 where job_code>=502;
#select * from Employeee;

# k. Write the SQL code that will change the PROJ_NUM to 14 for those employees who were hired before January 1, 1994, and whose job code is at least 501. 
#(You may assume that the table will be restored to its original condition preceding this question.)
#update Employee set proj_num=14 where job_code>=501 and emp_hiredate <'1994-1-1';
#update Employee set proj_num=0 where job_code>=501 and emp_hiredate <'1994-1-1';
#select * from Employeee;

# l. Select employees first name, last name, job code and hire date whose first name starts with letter ‘A’.
#Select  emp_fname,emp_lname,emp_hiredate,job_code from employeee where emp_fname like 'A%';

# m. Insert a new column “Salary” into this table and insert the data values for all the table records.

/*alter table Employeee add salary char(10);

update employeee set salary=51250 where emp_num=109;
update employeee set salary=49850 where emp_num=101;
update employeee set salary=56950 where emp_num=102;
update employeee set salary=89650 where emp_num=108;
update employeee set salary=32650 where emp_num=103;
update employeee set salary=45100 where emp_num=104;
update employeee set salary=98600 where emp_num=105;
update employeee set salary=52150 where emp_num=107;*/
#select * from employee;

# n. Write a query to select employee with the highest salary.
#select min(salary) as 'MIN SALARY' from employeee;

# o. Find the number of employees in department 500 and 502.
#select count(*) as 'Number of employees with job code of 500 and 502 ' from employeee where job_code=500 or job_code=502;

#p.  14. Get the count of employees hired year-wise.
#Select year(emp_hiredate) as hired_year, count(*) as number_of_employee from Employeee
#group by year(emp_hiredate)
#order by year(emp_hiredate);

# q. Select the employees whose first name contains “onz.”
#select * from employeee where emp_fname like '%onz%';

# r. Find the employees who joined in July 1989.
#select * from employeee where month(emp_hiredate)=7 and year(emp_hiredate)=1989;










