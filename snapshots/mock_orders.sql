{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}
{{
    config(
        unique_key='order_id',
        target_schema=new_schema,
        target_database='pc_fivetran_db',
        strategy='timestamp',
        updated_at='updated_at',
    )
}}

select *
from pc_fivetran_db.{{ target.schema }}.mock_orders

{% endsnapshot %}
