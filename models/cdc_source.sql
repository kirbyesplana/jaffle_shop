{{ config(materialized = 'table') }}

{% if var('cdc_batch', 1) == 1 %}

-- initial state
select 'A' as rec_id, 10 as amount, 0 as op
union all select 'B', 20, 0
union all select 'C', 30, 0

{% else %}

-- batch 2: CDC changes (update A, delete B via op=1, insert D)
select 'A' as rec_id, 15 as amount, 0 as op
union all select 'B', 20, 1
union all select 'D', 40, 0

{% endif %}
