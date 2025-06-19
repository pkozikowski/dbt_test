{{
    config(
        materialized='view',
        group='dagtest',
        alias='model_cc'
    )
}}

SELECT
    *
FROM
    {{ ref('model_a') }}

