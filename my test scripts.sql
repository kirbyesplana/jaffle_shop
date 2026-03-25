
--TRANSFORMER
SELECT CURRENT_ROLE()



--CSE_SANDBOX_USER
SELECT CURRENT_USER()


--CSE_SANDBOX_DATABASE
select current_database()


--DBT_KE_SCHEMA
select  current_schema()

SELECT table_name, table_owner, table_type, table_schema
FROM CSE_SANDBOX_DATABASE.INFORMATION_SCHEMA.TABLES
WHERE table_schema in( 'DBT_KESPLANA','DBT_KE_SCHEMA','DBT_KE_DEPLOY_SCHEMA')

drop schema  DBT_KESPLANA;

--YES
SELECT * FROM information_schema.databases where upper(database_NAME) = 'RAW'


--YES
SELECT * FROM information_schema.databases where upper(database_NAME) = 'ANALYTICS'

select * from raw.jaffle_shop.orders

select * from raw.stripe.payment

select c. from dim_customers c

select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        order_status as value_field,
        count(*) as n_records

    from cse_sandbox_database.dbt_kesplana.stg_jaffle_shop__orders
    group by order_status

)

select *
from all_values
where value_field not in (
    'placed','shipped','completed','returned'
)



  
  
      
    ) dbt_internal_test