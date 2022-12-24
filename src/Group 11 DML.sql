/* Populate all tables */
-- Customers Table
Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Bruce', 'Smith', '469-999-1123', 'bruce.smith@outlook.com', '75039');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Andrew', 'Miller', '469-222-1123', 'andrew.miller@gmail.com', '75039');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Angela', 'Nelson', '469-533-1123', 'angela.nelson@hotmai.com', '75039');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Chris', 'Lee', '469-433-0909', 'chris.lee@163.com', '75039');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Christine', 'Bernstein', '469-091-0909', 'christine.b@hotmail.com', '75080');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Sam', 'Cooper', '469-087-0733', 'sam.cooper@gmail.com', '75023');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Carmen', 'Powell', '469-987-5434', 'carmen.powell@outlook.com', '75001');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Karen', 'Trump', '469-091-3375', 'karen.trump@hotmail.com', '75022');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Brad', 'Tayler', '469-992-7734', 'brad.tayler@gmail.com', '75023');

Insert into Customers (Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email, Zip)
VALUES ('Bratt', 'Swift', '469-371-8780', 'bratt.swift@gmail.com', '75002');

-- Stores Table
INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Allen', 'Supermarket', '96033', 'Peter Kim', '75002');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Dallas', 'Supermarket', '96028', 'Mary Morels', '75257');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Plano', 'Supermarket', '96001', 'Chaz Mathew', '75023');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Houston', 'Supermarket', '96077', 'Brian Quinn', '77005');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Austin', 'Supermarket', '96035', 'Michael Martinize', '73301');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Rockwall', 'Neighborhood', '96022', 'Nancy Abraham', '75189');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Irving', 'Neighborhood', '96099', 'David Jonathan', '75039');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-San Antonio', 'Supermarket', '96082', 'Tony Green', '78112');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Prosper', 'Neighborhood', '96047', 'Emma Arroyo', '75033');

INSERT into Stores (store_id,Store_Name, Store_Type, Emp_ID, Owners, Zip)
VALUES (SEQ_Stores_Store_ID.nextval,'Little Red-Sherman', 'Neighborhood', '96021', 'Sherry Hugh', '75090');

-- Employees Table
Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('550001', '1', 'Tiffany', 'Kimberly', '01/02/1990', 'Full Time', '50000.00', '75080');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('550712', '9', 'Jason', 'Smith', '02/07/1992', 'Full Time', '60000.00', '75237');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('550456', '9', 'Micah', 'Young', '05/12/19790', 'Full Time', '70000.00', '75080');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('540074', '1',  'Sherry', 'Hill', '04/02/1983', 'Part Time', '13', '75023');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('540002', '9', 'Donnie', 'Lankford', '11/02/1998', 'Part Time', '35', '77005');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('540078', '9', 'Lauren', 'Huang', '12/02/1989', 'Part Time', '31', '75189');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('540098', '1', 'Eunice', 'Sue', '09/30/1995', 'Part Time', '18', '75189');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('540101', '6', 'Kai', 'Zhang', '08/17/1996', 'Part Time', '50', '75189');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('550234', '2', 'Sonia', 'Abraham', '01/02/1990', 'Full Time', '90000.00', '75023');

Insert into Employees (Emp_ID, Store_ID, Emp_FName, Emp_LName, Emp_DOB, Emp_Type, Emp_Salary, Zip)
VALUES ('550651', '4', 'Keith', 'Clein', '12/24/1997', 'Full Time', '130000.00', '75023');

-- Products Table
INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('320001', '320000', '2', 'CIRCUIT,BREAKER,80A,1P,C CURVE,240VAC', '206.73', '05/14/2037');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('320006', '320000', '3', 'GAUGE,PRESSURE,700LFB4002LA140,300PSI', '12.34','07/20/2033');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('310002', '310000', '4', 'ANGLE,A36,L2"x2"x1/4"20DOMESTIC', '5.13', '01/04/2023');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('310005', '310000', '5', 'CHANNEL,A36,C4x5.420DOMESTIC', '0.76',  '01/04/2023');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('330008', '310000', '6', 'MUNICIPAL UTILITY JOB', '30152.00', '12/31/2023');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('330897', '310000', '1', 'FIRE HOUSE', '60808.00', '12/31/2023');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('320769', '320000', '1', 'PUMP,CDF32-2/2-D0HD2B', '1387.23', '07/20/2033');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('310243', '310000', '10', 'TUBE,A500,2"x2"x1/4"20DOMESTIC', '3.14', '01/04/2023');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('320157', '320000', '1', 'EXPANSION,TANK,ARMSTRONG,26', '4241.33', '07/20/2033');

INSERT into Products (Prod_ID, Prod_Category_ID, Store_ID, Prod_Name, Prod_Price, Prod_Exp_Date)
VALUES ('320154', '320000', '8', 'VALVE,TRIPLE,DUTY,AW,TDV-006GR,6"', '3917.23', '07/20/2033');

-- Invoices Table
Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'101', '2', '550001', 'YES', '320001', '671.36', '3', '01/12/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'104', '6', '550456', 'YES', '320001', '223.79', '1', '03/01/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'105', '2', '550456', 'NO', '320001', '2067.30', '10', '11/01/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'106', '1', '550001', 'NO', '320154', '3917.23', '1', '03/23/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'107', '5', '540074', 'YES', '320154', '4240.40', '1', '04/28/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'109', '2', '550001', 'NO', '310243', '3140', '100', '09/06/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'100', '4', '540074', 'NO', '320157', '4241.33','1', '12/01/2021');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'106', '6', '550001', 'YES',  '320157', '32138.68', '7', '07/01/2021');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'103', '4', '550456', 'YES', '320157', '4591.24', '1', '02/01/2022');

Insert into Invoices (Invoice_ID,Cust_ID, Store_ID, Emp_ID, Taxable, Prod_ID, Invoice_Amount, OQuantity, Order_Date)
VALUES (SEQ_Invoices_Invoice_id.nextval,'108', '8', '550712', 'NO', '310243', '3.14', '1', '01/02/2022');


-- Queries
--query 1
SELECT *
FROM Employees;

--query 2
SELECT Cust_ID, Cust_FName, Cust_LName, Cust_Phone_Num, Cust_Email
FROM Customers;

--query 3
SELECT *
FROM Stores.zip;

--query 4
SELECT *
FROM Customers INNER JOIN invoices
ON Customers.Cust_ID=invoices.Cust_ID;

--query 5
SELECT *
FROM invoices
ORDER BY Invoice_Amount;

--query 6
SELECT Invoice_ID, Store_Name, OQuantity, Prod_Name, Prod_Price
FROM invoices JOIN Products on invoices.Prod_ID=Products.Prod_ID JOIN Stores on Products.Store_ID=Stores.Store_ID
FETCH FIRST 10 ROWS ONLY;

--query 7
SELECT DISTINCT Products.*, Stores.*, Invoices.*
FROM Products JOIN Stores on Products.Store_ID=Stores.Store_ID JOIN Invoices on Products.Prod_ID=Invoices.Prod_ID;

--query 8
SELECT Store_ID
FROM Products
GROUP BY Store_ID
HAVING Store_ID>'2';

--query 9
SELECT *
FROM Stores
WHERE Emp_ID IN ('96033', '96077', '96099', '96021');

--query 10
SELECT LENGTH(Emp_ID)
FROM Employees;

--query 11
SELECT *
FROM Customers;


DELETE
FROM Customers
WHERE Cust_FName IN ('Bruce','Andrew');

SELECT *
FROM Customers;
ROLLBACK;

--query 12
SELECT *
FROM invoices;

UPDATE invoices
SET Invoice_Amount='0'
WHERE Taxable='NO';

SELECT *
FROM invoices;

--Advanced Queries
--Q.13 list number of customers in each zip code, list from High to low.
SELECT COUNT(Cust_ID), Zip
FROM Customers
GROUP BY Zip
ORDER BY COUNT(Cust_ID) DESC;

--Q14 List all the customer who haven’t make any purchase in 2022
SELECT Cust_FName,Cust_LName
FROM customers
WHERE Cust_ID NOT IN (SELECT Cust_ID FROM Invoices WHERE Order_date > '01/01/2022')
ORDER BY Cust_FName, Cust_LName;

--Q.15 calculate the revenue for every store and rank
SELECT  stores.store_name,
        stores.store_ID,
        SUM(invoices.Invoice_Amount) AS revenue,
        RANK() OVER (ORDER BY SUM(invoices.Invoice_Amount) DESC) AS revenue_rank
FROM invoices inner join stores on stores.store_ID = invoices.store_ID
GROUP BY stores.store_name, stores.store_ID;

--Q.16 calculate the difference between each month’s revenue and the previous month for the purchase made after June,1 2022
SELECT  Order_date,
        Invoice_Amount,
        Invoice_Amount - LAG(Invoice_Amount, 1) OVER (ORDER BY Order_date) AS monthly_delta
FROM Invoices
WHERE Order_date > '06/01/2022'
ORDER BY Order_date, Invoice_Amount;

--Q.17 Display the product and the product name of all products which have more than one sales record.
SELECT p.Prod_ID, p.Prod_Name
FROM (
	SELECT Products.Prod_ID, Products.Prod_Name
	FROM Products INNER JOIN Invoices ON Products.Prod_ID = Invoices.Prod_ID
	) p
GROUP BY p.Prod_ID, p.Prod_Name
HAVING COUNT(p.Prod_ID) > 1;

--Q.18 Find the customer who purchased the most often and show their ID and the amount of that purchase.
SELECT c1.Cust_ID, c4.Invoice_Amount
FROM(
	SELECT Invoices.Cust_ID, COUNT(Invoices.Cust_ID) AS num_purchased
	FROM Invoices INNER JOIN Customers ON Invoices.Cust_ID =
	Customers.Cust_ID
	GROUP BY Invoices.Cust_ID
	) c1, 
	(SELECT MAX(c2.num_purchased) AS max_purchased
		FROM (
			SELECT Invoices.Cust_ID, COUNT(Invoices.Cust_ID) AS num_purchased
			FROM Invoices INNER JOIN Customers ON Invoices.Cust_ID =
			Customers.Cust_ID
		GROUP BY Invoices.Cust_ID
			) c2
	) c3, 
	(SELECT Customers.Cust_FName, Customers.Cust_LName, Customers.Cust_ID,Invoices.Invoice_Amount
		From Customers INNER JOIN Invoices on Invoices.Cust_ID =
		Customers.Cust_ID) c4 
where c1.num_purchased = c3.max_purchased 
and c1.Cust_ID = c4.Cust_ID;

--Q19query to display customer id ,first name, last name, invoice, order quantity who has ordered more than one quantity
SELECT c.cust_id,Cust_FName,Cust_LName,
i.OQuantity
FROM customers c
JOIN invoices i on
c.cust_id = i.cust_id
group by c.cust_id,Cust_FName,Cust_LName,
i.OQuantity
having i.OQuantity>1;

--Q20 Display Sum on Invoice amount for the Invoices created after  '04/01/2022' for customer residing in 75039 zip code.
SELECT Order_date,sum(i.invoice_amount) 
    FROM Invoices i 
    where i.cust_id in 
        (select c.cust_id 
            from customers c 
            where c.zip = '75039')
    group by i.invoice_amount,Order_date having Order_date > '04/01/2022';
