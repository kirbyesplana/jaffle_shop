select
    *,
    first_name as first_name_raw
from {{ source('jaffle_shop', 'customers') }}