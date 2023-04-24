with payment as (
    select * from {{ref('stg_payments')}}
)

select 
orderid,
sum(amount) as total_amount
from payment
group by orderid
having total_amount < 0