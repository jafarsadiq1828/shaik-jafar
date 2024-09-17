5.1  Select c.customer_id, c.first_name, c.last_name, Sum(a.balance) as Balance from customers c
 Left join accounts a on c.customer_id=a.customer_id Group by c.customer_id, c.first_name, c.last_name;


5.2.Select AVG(loan_amount) as 'Average Loan Amount', loan_term from loans
 Group by loan_term;

5.3. select loan_id, sum(loan_amount) as 'Total Loan Amount', sum(interest_rate) as Interest from loans 
 group by loan_id;

5.4. select top 1 transaction_type,  Count(transaction_type) as 'Most Frequent Transaction' from transactions 
 Group by transaction_type;

5.5.select Count(t.transaction_type) as "Transactions per account_type", t.transaction_type, a.account_type from accounts a
left join transactions t on a.account_id=t.account_id 
group by transaction_type, a.account_type;