{% snapshot PIC_snapshot %}

    {{
        config(
            target_schema="snapshots",
            strategy="check",
            unique_key="PIC_Code",
            check_cols="all",
        )
    }}

    -- Snapshot nên trỏ thẳng vào bảng nguồn (hoặc staging) 
    -- để bắt được thay đổi TRƯỚC khi nó được xử lý vào bảng Fact
    select *
    from {{ ref("stg_pic_sup") }}

{% endsnapshot %}

