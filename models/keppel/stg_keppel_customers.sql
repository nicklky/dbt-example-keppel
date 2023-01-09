

with source as (

    select * from {{ source('tpch', 'customer') }}

),final as (

    select
    
        c_custkey as customer_key_kpl,
        c_name as name_kpl,
        c_address as address_kpl, 
        c_nationkey as nation_key_kpl,
        c_phone as phone_number_kpl,
        c_acctbal as account_balance_kpl,
        c_mktsegment as market_segment_kpl,
        c_comment as comment_kpl

    from source

)

select * from final

