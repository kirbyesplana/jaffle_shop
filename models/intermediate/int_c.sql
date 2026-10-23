select
    a.id as a_id,
    b.id as b_id
from {{ ref('stg_a') }} a
join {{ ref('stg_b') }} b on a.id != b.id
