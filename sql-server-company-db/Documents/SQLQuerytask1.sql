select * from Employee --query 1 
select Fname ,Lname ,salary,DNO from Employee --query 2
select Pname ,Plocation ,Dname from Project p inner join Department D
on P.Dnum=D.Dnumber --query 3
select Fname +' '+ Lname as [full name] ,(Salary * 12 *0.1) as [Alias] from Employee; --query 4
select salary from Employee where( salary > 1000) --query 5
select SNN,Fname,Lname,( salary * 12) as [ANNUAL_Salary]from Employee where (Salary *12)> 10000 --qurey 6
select Fname +' '+Lname as [full name] , salary from  Employee where Sex = 'f' --qurey 7
select Dname , MGRSNN from Department --qurey 8
select Pname ,Plocation ,Pnumber from Project where Dnum = 2 --qurey 9
