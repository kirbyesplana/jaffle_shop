with base as (
    select * from {{ ref('stg_test__item') }}
)
select
    document,
    upper(document) as document_upper  -- forces a real transformation, not passthrough
from base