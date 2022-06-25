SELECT * from HumanResources.Employee;
SELECT * from HumanResources.EmployeeDepartmentHistory;
SELECT * from HumanResources.EmployeePayHistory;


## Question 1
select month(Hiredate) as Hiremonth, COUNT(HireDate) as Hiring_count from HumanResources.Employee 
group by Month(HireDate)


#Question 2
SELECT concat(P.FirstName, P.LastName ) AS Name, 
E.JobTitle as JobTitle, 
E.OrganizationLevel as OrganizationLevel, 
count(E.OrganizationLevel) OVER(PARTITION by E.OrganizationLevel ) as NumberofEmployeeReportinfg

from Person.Person P INNER JOIN HumanResources.Employee E 
on P.BusinessEntityID = E.BusinessEntityID


## Question 3
select firstname from person.person where(person.BusinessEntityID not in
(select businessEntityID from HumanResources.Employee))
and (FirstName like '%')








##Question 4
select DepartmentId as Departmentname,Year(startdate) as year, count(departmentid) as employee_count
from HumanResources.EmployeeDepartmentHistory
GROUP by year(StartDate),DepartmentID;












#Question 5
select product.productid, product.name from production.product inner join production.transactionhistory on 
production.productid=TransactionHistory.ProductID;



select * from production.product;



