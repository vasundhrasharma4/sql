
/*
Query 1: SQL Group Functions
Display the number of customers for each country.

SELECT Country, COUNT(*) AS num_customers
FROM Customer
GROUP BY Country;
*/
/*
Query 2: SQL Group Functions
Display the Employee_id and the number of orders for each employee with more than 10 orders.


SELECT Employee_id, COUNT(*) AS num_orders
FROM Orders
GROUP BY Employee_id
HAVING COUNT(*) > 10;
*/

/*
Query 3: SQL Group Functions
Display the total of each order where Order_ID is greater than 11072.

SELECT Order_ID, SUM(Fees) AS Total_of_Order
FROM Orders
WHERE Order_ID > 11072
GROUP BY Order_ID;

*/

/*
Query 4: SUBQUERY
Display the Company_name of customers who did not submit any orders.
*/
SELECT Name, Client_ID
FROM Customer
WHERE Client_ID NOT IN
 (SELECT Client_ID FROM Orders);


/*
SUBQUERY
Display the Company_name of Canadian customers in cities where there is at least one supplier.

SELECT Name
FROM Customer
where  Country="Canada"and
City in
(Select City from Supplier
);

*/

/*
SUBQUERY
Display the First_name, Last_name and title of all employees who have 
a salary greater than all employees with the title of 'Sales Representative'.



Select  First_name, Last_name, Title from
Employee 
where Salary > ALL 
(Select Salary from Employee
where Title="Sales Representative"
);

*/
/*
JOINS
Display the list of suppliers who are selling products having a price is greater than 50.

Select  s.Name
from Supplier s
join Product p on
s.Supplier_ID=p.Supplier_ID
where p.Unit_Price >50
;
*/
/*
JOINS
Display the list of Product_Name of products having the same Unit_Price.

Select  p.Name from Product p
join  Product p1 on
p.Unit_Price=p1.Unit_Price
where
p.Product_ID<>p1.Product_ID;
*/

/*
Query 9: JOIN and GROUP FUNCTION
Display the First_name, Last_name and the number of orders for each employee having more than 10 orders.


SELECT e.First_name, e.Last_name, COUNT(o.Order_ID) AS num_OF_Orders
FROM Employee e
JOIN Orders o 
ON e.Employee_id = o.Employee_id
GROUP BY e.Employee_id, e.First_name, e.Last_name
HAVING COUNT(o.Order_ID) > 10;

*/

/*
Query 10: JOIN and SUBQUERY
Display the names of suppliers who sell products that have the same unit price as the product Steeleye Stout.



SELECT s.Name
FROM Supplier s
JOIN Product p
 ON s.Supplier_id = p.Supplier_id
WHERE p.Unit_Price = (
    SELECT Unit_Price
    FROM Product p1
    WHERE p1.Name = 'Steeleye Stout'
);
*/






