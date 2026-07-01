use bankingdb;
select * from customers;
select firstname, lastname, email, phone from customers;
insert into customers values(101, "Rahul","Sharma","rahulsharma@gmail.com","9835475898","2025-06-23","2002-04-10");
select * from accounts;
insert into accounts values(201, 101, "Saving", 40000);
select * from accounts where accounttype = "Saving";
select * from accounts where balance > 25000;
select * from accounts where balance between 5000 and 20000;
select * from customers where customerid in (101,102,103);
select * from customers where firstname like "R%";

-- Retrieve all current account records
select * from accounts;

-- Find accounts with balance less than 15000
select * from accounts where balance < 15000;
select * from transactions;

insert into transactions values(301, 202, "2026-3-23",8000, "Online"),(302, 201, "2026-1-3",15000, "Cash");

-- Display transactions between 1000 and 10000
select * from transactions where amount between 1000 and 10000;
 
-- Retrieve customer records for CustomerID 104 and 105
select * from customers where customerid in (104, 105);

-- Display customers whose last name starts with S
select * from customers where lastname like "S%";

select * from customers order by firstname asc;
select * from accounts order by balance desc;
select distinct accounttype from accounts;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

-- Display customers sorted by LastName
select * from customers order by lastname;

-- Retrieve top 5 transactions with highest amount
select * from transactions order by amount desc limit 5;

-- Display unique transaction types
select distinct transactiontype from transactions;

-- Skip the first 3 transaction records and display the next 4 records
select * from transactions limit 4 offset 3;

SELECT *
FROM Customers
WHERE Phone IS NULL;

SELECT *
FROM Customers
WHERE Email IS NOT NULL;

-- Find customers without email addresses
select * from customers where email is null; 

-- Display all accounts where balance information is available
select * from accounts where balance is not null;

select accountid, balance, case when balance >= 50000 then "Premium Account" when balance >= 25000 then "Standard Account" else "Basic Account" end as "Acoount_Category" from accounts;

select * from transactions;
insert into transactions values(303, 201, "2026-5-3",24000, "Online"),(305, 202, "2026-1-3",12000, "Cash");
select Transactionid, amount, transactiontype, case when amount >= 20000 then "High Transaction" when amount >= 10000 then "Medium Transaction" else "Low Transaction" end as "Transaction_status" from transactions;