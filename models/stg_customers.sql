-- rebuild trigger
select
    id as customer_id -- test
from {{ source('jaffle_shop', 'customers') }}
