{{
    config(
        materialized='view',
        group='dagtest'
    )
}}

SELECT
    *
FROM
    {{ ref('model_a') }}

