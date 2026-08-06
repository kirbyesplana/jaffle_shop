select
    id,
    first_name,
    first_name as first_name_raw,
    last_name
from {{ source('jaffle_shop', 'customers') }}