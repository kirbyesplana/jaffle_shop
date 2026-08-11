-- rebuild trigger
select 
    id as b_id, --test 
    first_name -- comment
from {{ source('jaffle_shop', 'customers') }}