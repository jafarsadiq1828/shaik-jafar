6.1.Create view active_payments1 
as
select loan_id, payment_amount from loan_payments where payment_amount>100;

select * from active_payments1

6.2.create index idx_transaction_date on transactions(transaction_date)