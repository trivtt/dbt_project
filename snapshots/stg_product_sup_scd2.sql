{% snapshot product_snapshot %}

    {{
        config(
            target_schema="snapshots",
            strategy="check",
            unique_key="Product_ID",
            check_cols="all",
        )
    }}

    -- Snapshot nên trỏ thẳng vào bảng nguồn (hoặc staging) 
    -- để bắt được thay đổi TRƯỚC khi nó được xử lý vào bảng Fact
    select *
    from {{ ref("stg_product_sup") }}

{% endsnapshot %}

