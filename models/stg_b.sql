select 
    id as b_id, --test
    first_name
from {{ source('jaffle_shop', 'customers') }}