create view manger_info
as select Dname, Fname, Lname, Salary
from Department, Employee where
Mgr_ssn = SSN group by Dname
SELECT * FROM manger_info;
