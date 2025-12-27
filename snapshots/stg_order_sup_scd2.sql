{% snapshot orders_snapshot %}

    {{
        config(
            target_schema="snapshots",
            strategy="check",
            unique_key="Order_ID",
            check_cols="all",
        )
    }}

    -- Snapshot nên trỏ thẳng vào bảng nguồn (hoặc staging) 
    -- để bắt được thay đổi TRƯỚC khi nó được xử lý vào bảng Fact
    select *
    from {{ ref("stg_transaction_sup") }}

{% endsnapshot %}

