select *
from {{ source('staging', 'test_source_item') }}