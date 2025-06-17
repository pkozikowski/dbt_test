SELECT
    SUBTOTAL_CENTS, TAX_PAID_CENTS 
FROM
    {{ source('public_b', 'ORDERS') }}