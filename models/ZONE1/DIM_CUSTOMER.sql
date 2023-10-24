{{ config(
    database=env_var('DBT_DATABASE')
)}}
WITH CUST as
(
    SELECT * FROM {{ source('Snowflake_Sample','CUSTOMER')}}
)
SELECT * FROM CUST