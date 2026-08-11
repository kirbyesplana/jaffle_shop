select 
    id as b_id, 
    first_name
from {{ source('jaffle_shop', 'customers') }}