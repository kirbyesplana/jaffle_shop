select b_id, first_name
from {{ ref('stg_b') }}