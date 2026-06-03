{% macro get_incremental_cdc_merge_sql(arg_dict) %}
    merge into {{ arg_dict["target_relation"] }} as t
    using {{ arg_dict["temp_relation"] }} as s
    on t.rec_id = s.rec_id
    when matched and s.op = 1 then delete
    when matched then update set t.amount = s.amount, t.op = s.op
    when not matched and s.op != 1 then insert (rec_id, amount, op)
        values (s.rec_id, s.amount, s.op)
{% endmacro %}