{% snapshot customer_snapshot %}
  
{{
  config(
    target_schema='cust',
    unique_key='order_id',
    strategy='timestamp',
    updated_at='ordered_at',
    invalidate_hard_delete = 'true'    
  )
}}

select
  order_id,
  customer_id,
  ordered_at
from {{ source('orders', 'orders') }}

{% endsnapshot %}