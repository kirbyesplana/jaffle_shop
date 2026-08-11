select b_id, 
first_name--comment
from {{ ref('stg_b') }}