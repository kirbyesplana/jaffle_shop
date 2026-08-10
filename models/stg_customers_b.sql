select
    id as cust_id,
    last_name
from {{ source('jaffle_shop', 'customers') }}