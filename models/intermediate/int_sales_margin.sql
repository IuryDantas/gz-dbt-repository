SELECT *,
    revenue - purchase_price AS margin
FROM
    {{ source('raw','sales') }}
JOIN
    {{ source('raw', 'product') }}
USING
    (products_id)