{# example of macro use in sql#}
with

    source as (select * from {{ source("stripe", "payment") }}),

    renamed as (

        select
            id as payment_id,
            orderid as order_id,
            paymentmethod as payment_method,
            status as payment_status,
            -- amount is stored in cents, convert it to dollars
            {{ cents_to_dollars('amount',4) }} as amount,
            created as created_at
        from source

    )
select *
from renamed
