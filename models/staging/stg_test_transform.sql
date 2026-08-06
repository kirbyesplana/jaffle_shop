select
    *,
    first_name as first_name_raw --added comment
from {{ source('jaffle_shop', 'customers') }}