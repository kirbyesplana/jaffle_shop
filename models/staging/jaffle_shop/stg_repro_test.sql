-- Mirrors stg_ps_dbo__ps_item's exact pattern
-- with explicitly-aliased columns. The column we're tracing (first_name)
-- is NOT in the explicit rename list -- it only comes through via `*`.

select
    first_name,
    id          as customer_id,
    last_name   as surname
from {{ source('jaffle_shop', 'customers') }}