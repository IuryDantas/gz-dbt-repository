with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS DECIMAL) as purchase_price

    from source

)

select * from renamed
