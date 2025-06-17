{{
    config(
        materialized='view'
    )
}}

SELECT
    *
FROM
    {{ ref('model_b') }}
