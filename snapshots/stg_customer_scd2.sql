---Hoặc có thể thay bằng dòng cố định
{% snapshot price_snapshot %}
    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='Store_ID',
          check_cols= 'all' 
        )
    }}

    SELECT * FROM {{ ref('stg_customer') }}
{% endsnapshot %}