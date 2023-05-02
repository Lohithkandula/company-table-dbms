create view deptavg_salary as select D.Dname,
(avg(salary)) as dept_avg from EMPLOYEE E,
DEPARTMENT D Where E.Dno = D.Dnumber group by
Dname
ORDER BY avg(E.salary) desc limit
1;
SELECT * FROM deptavg_salary;
create view avg_salary
as select avg(e.salary) as emp_avg, avg(m.salary) , d.Dname as
name_max_avg_dept from EMPLOYEE e,manager_info m,deptavg_salary d;
SELECT * FROM avg_salary;
