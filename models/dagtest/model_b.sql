{{
    config(
        materialized='incremntal'  if target.name == 'dev' else 'view',
        group = 'dagtest'
    )
}}

SELECT
    SUBTOTAL_CENTS, TAX_PAID_CENTS
FROM
    {{ source('public_b', 'ORDERS') }}

{% if is_incremental() %}
where ordered_at >= (select coalesce(max(ordered_at),'1900-01-01') from {{ source('public_b', 'ORDERS') }} )

{% endif %}