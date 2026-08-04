{% macro check_access() %}
  {% if execute %}

    {% do log("==== current context ====", info=True) %}
    {% set ctx = run_query("select current_role() as role, current_user() as user, current_warehouse() as wh, current_database() as db") %}
    {% for row in ctx.rows %}
      {% do log(row['ROLE'] ~ " | " ~ row['USER'] ~ " | " ~ row['WH'] ~ " | " ~ row['DB'], info=True) %}
    {% endfor %}

    {% do log("==== grants to role transformer (privilege | granted_on | name) ====", info=True) %}
    {% set grants = run_query("show grants to role transformer") %}
    {% for row in grants.rows %}
      {% do log(row['privilege'] ~ " | " ~ row['granted_on'] ~ " | " ~ row['name'], info=True) %}
    {% endfor %}

    {% do log("==== can transformer see dbt_ke_schema? ====", info=True) %}
    {% set sch = run_query("show schemas like 'dbt_ke_schema' in database cse_sandbox_database") %}
    {% do log("rows returned: " ~ sch.rows | length, info=True) %}
    {% for row in sch.rows %}
      {% do log(row['name'], info=True) %}
    {% endfor %}

  {% endif %}
{% endmacro %}
