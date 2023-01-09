

with source as (

    select * from {{ source('tpch', 'customer') }}

),final as (

    select
    
        c_custkey as lease_customer_key_k,
        c_name as lease_name_k,
        c_address as lease_address, 
        c_nationkey as lease_nation_key,
        c_phone as lease_phone_number,
        c_acctbal as lease_account_balance,
        c_mktsegment as lease_market_segment,
        c_comment as lease_comment_new

    from source

)

select * from final

