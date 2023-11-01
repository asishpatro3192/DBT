{{ config(
    database=env_var('DBT_DATABASE'),
    persist_docs={"relation": true, "columns": true}
)}}

with source as (

    select * from {{ source('Snowflake_Sample', 'LINEITEM_ALIAS') }}

),

renamed as (

    select
        l_orderkey,
        l_partkey,
        l_suppkey,
        l_linenumber,
        l_quantity,
        l_extendedprice,
        l_discount,
        l_tax,
        l_returnflag,
        l_linestatus,
        l_shipdate,
        l_commitdate,
        l_receiptdate,
        l_shipinstruct,
        l_shipmode,
        l_comment

    from source

)

select * from renamed