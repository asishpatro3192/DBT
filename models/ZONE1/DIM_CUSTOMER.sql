{{ config(
    database=env_var('DBT_DATABASE'),
    persist_docs={"relation": true, "columns": true}

)}}
WITH CUST as
(
    SELECT * FROM {{ source('Snowflake_Sample','CUSTOMER')}}
)
SELECT * FROM CUST