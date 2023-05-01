Create view departments
As
Select Dname,Dnumber, Mgr_ssn,Mgr_start_date from
DEPARTMENT;
SELECT * FROM departments;
update departments set
mgr_start_date="10-10-10"
where
Dnumber=3;
SELECT * FROM departments;
