{% _snapshot orders_snapshot %}

{{
    config(
      target_database='PC_FIVETRAN_DB',
      target_schema='dbt_stope',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}