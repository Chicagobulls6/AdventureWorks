
/*1. From the following table write a query in SQL to retrieve all rows and columns from the employee table in the Adventureworks database. 
Sort the result set in ascending order on jobtitle.
Sample table: HumanResources.Employee
*/

select * from AdventureWorks2022.HumanResources.Employee order by JobTitle


/*
2. From the following table write a query in SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database. 
Sort the output in ascending order on lastname.
Sample table: Person.Person */

select pp.* from AdventureWorks2022.Person.Person as pp order by LastName asc


/* 3. From the following table write a query in SQL to return all rows and a subset of the columns (FirstName, LastName, businessentityid) from the person table in the AdventureWorks database. 
The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname.
Sample table: Person.Person */

select firstname, lastname, BusinessEntityID as Employee_id from AdventureWorks2022.Person.Person order by LastName asc

/*4. From the following table write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. 
Return productid, productnumber, and name. Arranged the output in ascending order on name.
Sample table: production.Product */

select productid,ProductNumber, name from AdventureWorks2022.Production.Product where ProductLine like 'T%' order by Name

/*5. From the following table write a query in SQL to return all rows from the salesorderheader table in Adventureworks database and calculate the percentage of tax on the subtotal have decided. 
Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. Arranged the result set in ascending order on subtotal.
Sample table: sales.salesorderheader */

select salesorderid, customerid, orderdate, SubTotal, (TaxAmt/SubTotal *100) as percentage_Tax from AdventureWorks2022.Sales.SalesOrderHeader order by SubTotal desc


/*6. From the following table write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. 
Return jobtitle column and arranged the resultset in ascending order.
Sample table: HumanResources.Employee */

select distinct(jobtitle)  from AdventureWorks2022.HumanResources.Employee  order by JobTitle asc

/*7. From the following table write a query in SQL to calculate the total freight paid by each customer. Return customerid and total freight. Sort the output in ascending order on customerid.

Sample table: sales.salesorderheader */

select customerID, SUM(Freight) as total_feright  from AdventureWorks2022.Sales.SalesOrderHeader group by customerID order by CustomerID asc