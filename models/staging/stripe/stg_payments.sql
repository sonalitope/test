  with payments as (
  select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount,
        created

    from "PC_FIVETRAN_DB"."GOOGLE_DRIVE"."STRIPE_PAYMENTS"

)

select * from payments
