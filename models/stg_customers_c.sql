select
    id as c_customer_id,
    mobile_number
from {{ source('jaffle_shop', 'customers') }}