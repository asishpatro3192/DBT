WITH CUST as
(
    SELECT * FROM {{ source('Snowflake_Sample','CUSTOMER')}}
)
SELECT * FROM CUST