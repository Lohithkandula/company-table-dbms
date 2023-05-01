create view project_info as select Pname,
Dname, (select COUNT(*)
from Works_On W1
where W1.Pno = P1.Pnumber) as
Num_Employee,
(select SUM(W2.Hours)
from Works_On W2
where W2.Pno = P1.Pnumber
group by Pno) as Total_Hours
from Project P1, Department D1
where P1.Dnum = D1.Dnumber;
SELECT * FROM project_info;
