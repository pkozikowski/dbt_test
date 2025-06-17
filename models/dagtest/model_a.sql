{{
    config(
        group='dagtest',
        store_failures=true
    )
}}
SELECT
    EMPLOYEE_ID, CUSTOMER_ID
FROM
    {{ source('public_a', 'EMPLOYEE')}}


