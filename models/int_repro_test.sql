-- Simple downstream consumer, explicitly selecting the wildcard-passthrough
-- column by name here. This tests whether CLL can trace first_name forward
-- from the source, THROUGH the staging model's wildcard, into this model.

select
    customer_id,
    surname,
    first_name
from {{ ref('stg_repro_test') }}