4.1. Select * from customers;

4.2. Select * from Customers where customer_id=1;

4.3. Select concat(customers.first_name, ' ', customers.last_name) as 'Customer Name', accounts.balance from customers
left join accounts on customers.customer_id=accounts.customer_id;


4.4. select c.customer_id, l.loan_amount-lp.payment_amount as 'Loan Balance' from customers c 
left join loans l on c.customer_id=l.customer_id
left join loan_payments lp on l.loan_id=lp.loan_id;

4.5.select c.customer_id,t.transaction_date
from customers c 
left join accounts a on c.customer_id=a.customer_id
left join transactions t on a.account_id=t.account_id
WHERE YEAR(t.transaction_date) = 2024 AND Day(t.transaction_date) = 3;