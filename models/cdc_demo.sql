{{
  config(
    materialized         = 'incremental',
    incremental_strategy = 'cdc_merge',
    unique_key           = 'rec_id'
  )
}}

select rec_id, amount, op
from {{ ref('cdc_source') }}
