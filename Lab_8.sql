use bankingdb;
select a.accountid, a.accounttype, a.balance, t.transactionid, t.transactiontype, t.transactiondate, t.amount from accounts a inner join transactions t on a.AccountID = t.accountid; 
select a.accountid, a.accounttype, a.balance, t.transactionid, t.transactiontype, t.transactiondate, t.amount from accounts a left join transactions t on a.AccountID = t.accountid;
select a.accountid, a.accounttype, a.balance, t.transactionid, t.transactiontype, t.transactiondate, t.amount from accounts a inner join transactions t on a.AccountID = t.accountid where t.TransactionType = "Deposit"; 