create view high_account_balance as select accountid, accounttype, balance, customerid from accounts where balance > 30000;
select * from high_account_balance;
CREATE OR REPLACE VIEW High_Balance_Accounts AS
SELECT
    a.AccountID, a.AccountType, a.Balance, a.CustomerID,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE a.Balance > 30000;

select * from high_balance_accounts;
SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID,
    TransactionID,
    TransactionDate,
    TransactionType,
    Amount
FROM High_Balance_Accounts
ORDER BY Balance DESC;