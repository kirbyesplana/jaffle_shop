select
    id as customer_id,
    upper(first_name) as first_name_upper,
    upper(last_name) as last_name_upper
from {{ ref('stg_test_transform') }}