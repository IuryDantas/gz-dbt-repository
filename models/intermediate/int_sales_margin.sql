SELECT *
   , revenue-purchase_price AS margin

FROM
    {{ ref('stg_raw__sales') }}
JOIN
    {{ ref('stg_raw__product') }}
USING (products_id)