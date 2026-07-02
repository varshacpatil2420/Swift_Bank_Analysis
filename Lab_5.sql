select * from customers where FirstName like "A%";
select * from customers where email like "%gmail%";
select * from customers where LastName like "%kar";

-- Display customers whose first name starts with R
select * from customers where FirstName like "R%";

-- Find customers whose email contains yahoo
select * from customers where email like "%yahoo%";

-- Display customers whose last name starts with P
select * from customers where LastName like "P%";

-- Search customers whose phone number ends with 99
select * from customers where phone like "%99";

select * from transactions where TransactionType in ("Withdrawal","Deposite");
select * from transactions;
update transactions set transactionType = "Withdrawal" where transactiontype = "Online";
update transactions set transactionType = "Deposite" where transactiontype = "Cash";

-- Display accounts belonging to Salary and Savings account types
select * from accounts where AccountType in ("Salary", "Savings");

-- Retrieve transactions for Payment and Deposit categories
select * from transactions where TransactionType in ("Deposite", "Payment");

-- Display customer records for CustomerID 103 and 104
select * from customers where CustomerID in (103, 104);

-- Retrieve selected account records using AccountID values
select * from accounts;
select * from accounts where AccountID in (201,202,203);

select * from customers order by LastName asc;
select * from accounts order by Balance desc;
select * from transactions order by TransactionDate desc;

-- Display customers sorted by FirstName
select * from customers order by FirstName asc;

-- Display accounts sorted by AccountType
select * from accounts order by AccountType asc;

-- Display transactions sorted by Amount in descending order
select * from transactions order by Amount desc;
 
-- Display customers sorted by DateOfBirth
select * from customers order by DateOfBirth asc;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

select * from customers limit 3;
select * from transactions limit 5 offset 3;
select * from transactions;

-- Display top 3 transactions with highest amount
select * from transactions order by Amount desc limit 3;

-- Retrieve only 4 customer records
select * from customers limit 4;

-- Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;

-- Display top 5 latest transactions
select * from transactions order by TransactionDate desc limit 5;

select * from accounts where AccountType = "Savings" order by Balance desc;

SELECT *
FROM Customers
WHERE FirstName LIKE 'S%'
LIMIT 5;