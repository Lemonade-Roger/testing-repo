with orders as (

    select
        order_id,
        customer_id,
        order_date
    from {{ ref('stg_orders') }}

),

payments as (

    select
        order_id,
        amount,
        status
    from {{ ref('stg_payments') }}

),

order_payments as (

    select
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by order_id

)

select
    ord.order_id,
    ord.customer_id,
    ord.order_date,
    coalesce(pay.amount, 0) as amount

from orders ord
left join order_payments pay using (order_id) --on ord.order_id = pay.order_id
