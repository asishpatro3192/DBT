{{ config(
    database=env_var('DBT_DATABASE')
)}}

WITH ORD as
(
    SELECT * FROM {{source('Snowflake_Sample','ORDERS')}}
)

SELECT * FROM ORD