show databases;
use hr_analytics;
select * from employees;

select dept, count(comp_left) from employees
where comp_left = 1 group by dept order by count(comp_left) desc;
# No. of Employees Leaving from Each Department


SELECT dept,
       COUNT(CASE WHEN comp_left = 1 THEN 1 END) AS count_left,
       (COUNT(CASE WHEN comp_left = 1 THEN 1 END) / COUNT(*) * 100) AS percentage_left
FROM employees
GROUP BY dept;
#percentage of employees leaving the company w.r.t departments.

select dept, avg(avgmonthlyhours), comp_left from employees
group by dept, comp_left order by dept ;
# average montly hours --> per week 45H in general so per month 45* 4 = 180 
# but each department working morethen 180 hours







# SALES:

select avg(satisfactorylevel) from employees
where dept like 'sales' and comp_left = 1;
# 0.4 


select count(salary), salary from employees
where dept like 'sales' and comp_left = 1 group by salary;
# mostly low salary


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('sales')and timespent >= 5
group by promotionInLast5years;
# 287/288 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'sales' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 3773 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'sales' and
promotioninlast5years = 0
group by dept ;
# •	25 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.56 evaluation



select * from employees;

SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'sales' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 207 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'sales'  
group by comp_left;
# 1014 and 3126







#TECHNICAL:

select count(salary), salary from employees
where comp_left = 1 and dept in ('technical') group by salary ;
# mostly low salry from technical


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('technical')and timespent >= 5
group by promotionInLast5years;
# with 5 years of exp non were promoted in technical


select timespent,promotionInLast5years from employees
where  comp_left = 1 and dept in ('technical') ;


select avg(lastevaluation), count(comp_left) from employees
where dept = 'technical' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 697


select avg(lastevaluation) from employees
where dept = 'technical' and comp_left = 1 ;
#0.73


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'technical' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 2813


select dept, count(promotioninlast5years), promotioninlast5years from employees
where comp_left = 1 and dept = 'technical' group by promotioninlast5years;
# 694 were not promoted out of 697


select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'technical' and
promotioninlast5years = 0
group by dept ;
#22 employees faced work accident and not yet promoted with 5 years of experience 
# with low salary with 0.71 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'technical' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
#100 employees were getting low salary though they have served 5 years with 0.7+ evaluation score

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'technical'  
group by comp_left;
# 697 and 2023









# SUPPORT:

select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'support' group by promotioninlast5years;


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'support' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;


select dept,avg(avgmonthlyhours) from employees
where comp_left = 1 and dept = 'support' group by dept;


select dept, count(salary),salary from employees
where comp_left = 1 and dept = 'support'  group by salary;


select avg(satisfactoryLevel) from employees
where dept = 'support' and comp_left =1
group by dept ;



select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'support' and
promotioninlast5years = 0
group by dept ;
#21 employees faced work accident and not yet promoted with 5 years of experience 
# with low salary with 0.71 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'support' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 111

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'support'  
group by comp_left;
# 555 and 1674






 # IT:
 
select avg(satisfactorylevel) from employees
where dept like 'it' and comp_left = 1;
# 0.41


select count(salary), salary from employees
where dept like 'it' and comp_left = 1 group by salary;
# mostly low salary 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('it')and timespent >= 5
group by promotionInLast5years;
# 78/78 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'it' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 1093 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'it' and
promotioninlast5years = 0
group by dept ;
# •	06 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.83 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'it' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 52 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre



select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'it' group by promotioninlast5years;
# 270/273 

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'it'  
group by comp_left;
# 273 and 954








# HR:

select avg(satisfactorylevel) from employees
where dept like 'hr' and comp_left = 1;
# 0.43


select count(salary), salary from employees
where dept like 'hr' and comp_left = 1 group by salary;
# mostly low salary 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('hr')and timespent >= 5
group by promotionInLast5years;
# 78/78 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'hr' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 761 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'hr' and
promotioninlast5years = 0
group by dept ;
# •	04 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.52 evaluation




SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'hr' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 52 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre



select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'hr' group by promotioninlast5years;
# 215 

select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'HR' group by promotioninlast5years;
# 215


SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'hr'  
group by comp_left;
# 215 and 524




# ACCOUNTING:

select avg(satisfactorylevel) from employees
where dept like 'accounting' and comp_left = 1;
# 0.40


select count(salary), salary from employees
where dept like 'accounting' and comp_left = 1 group by salary;
# mostly low salary and mediun


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('accounting')and timespent >= 5
group by promotionInLast5years;
# 48/48 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'accounting' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 901 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'accounting' and
promotioninlast5years = 0
group by dept ;
# •	02 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.90 evaluation




SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'accounting' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 19 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre

select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'ACCOUNTING' group by promotioninlast5years;
# 204

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'accounting'  
group by comp_left;
# 204 and 563



# MARKETING:

select avg(satisfactorylevel) from employees
where dept like 'marketing' and comp_left = 1;
# 0.45


select count(salary), salary from employees
where dept like 'marketing' and comp_left = 1 group by salary;
# mostly low salary 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('marketing')and timespent >= 5
group by promotionInLast5years;
# 59/59 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'marketing' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 727 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'marketing' and
promotioninlast5years = 0
group by dept ;
# •	04 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.78 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'marketing' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 19 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre


select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'MARKETING' group by promotioninlast5years;
# 203

SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'marketing'  
group by comp_left;
# 203 and 655






# PRODUCT MANAGER:

select avg(satisfactorylevel) from employees
where dept like 'product_mng' and comp_left = 1;
# 0.48


select count(salary), salary from employees
where dept like 'product_mng' and comp_left = 1 group by salary;
# mostly low salary 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('product_mng')and timespent >= 5
group by promotionInLast5years;
# 69/69 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'product_mng' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 762 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'product_mng' and
promotioninlast5years = 0
group by dept ;
# •	04 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.47 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'product_mng' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 40 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre


select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'PRODUCT_MNG' group by promotioninlast5years;
#198


SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'product_mng'  
group by comp_left;
# 198 and 704





# R and D:

select avg(satisfactorylevel) from employees
where dept like 'randD' and comp_left = 1;
# 0.48


select count(salary), salary from employees
where dept like 'randD' and comp_left = 1 group by salary;
# mostly low salary and medium 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('randD')and timespent >= 5
group by promotionInLast5years;
# 44/44 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'randD' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 487 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'randD' and
promotioninlast5years = 0
group by dept ;
# •	05 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.68 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'randD' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 40 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre


select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'RandD' group by promotioninlast5years;
#121



SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'RandD'  
group by comp_left;
#121 and 666




# MANAGEMENT:

select avg(satisfactorylevel) from employees
where dept like 'MANAGEMENT' and comp_left = 1;
# 0.42


select count(salary), salary from employees
where dept like 'MANAGEMENT' and comp_left = 1 group by salary;
# mostly low salary 


select count(promotionInLast5years),promotionInLast5years from employees
where  comp_left = 1 and dept in ('MANAGEMENT')and timespent >= 5
group by promotionInLast5years;
# 18/18 were not promoted


select avg(lastevaluation), count(comp_left),sum(numberofprojects) from employees
where dept = 'MANAGEMENT' and comp_left = 1 and promotioninlast5years = 0
group by promotioninlast5years;
# 365 projects

select dept, count(promotioninlast5years),workaccident, salary, avg(lastevaluation)
from employees
where salary ='low' and comp_left = 1 and workaccident = 1 and dept = 'MANAGEMENT' and
promotioninlast5years = 0
group by dept ;
# •	03 employees faced work accident and not yet promoted with 5 years of experience
# with low salary with 0.71 evaluation



SELECT dept, salary, COUNT(comp_left) AS comp_left_count
FROM employees
WHERE timespent >= 5 AND comp_left = 1 AND salary = 'low' AND dept = 'MANAGEMENT' 
GROUP BY dept, salary
HAVING AVG(lastevaluation) >= 0.7 AND SUM(promotionInLast5years) = 0;
# 13 employees were getting low salary though they have served 5 years with 0.7+ evaluation socre


select dept, count(promotioninlast5years), promotioninlast5years, avg(satisfactorylevel),
avg(lastevaluation)
from employees
where comp_left = 1 and dept = 'management' group by promotioninlast5years;
# 88 and 3


select * from employees;
SELECT dept, comp_left, avg(numberofprojects), count(*) from employees
where dept = 'management'  
group by comp_left;
# 91 and 539



/*
-----------------------------------------------
-------------------------------------------
----------------------------------------
----------------------------------
------------------------------
------------------------
*/


# MORE:


select * from employees;

select dept, count(workaccident) from employees
where workaccident = 1 and comp_left = 1
group by dept;

select dept, count(workaccident) from employees
where workaccident = 1
group by dept;


use hr_analytics;
select count(comp_left) from employees
where comp_left = 1 group by comp_left;