use bankingdb;
select avg(amount) from transactions;
select * from transactions where amount > (select avg(Amount) from transactions);
SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance >
(
    SELECT AVG(Balance)
    FROM Accounts
)
ORDER BY Balance DESC;

select * from accounts;
select * from transactions;
select accountid, accounttype, balance, customerid from accounts where AccountID in (select AccountID from transactions where TransactionType = "Deposit");

SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance =
(
    SELECT MAX(Balance)
    FROM Accounts
);