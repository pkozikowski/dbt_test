{{
    config(
        group='dagtest'
    )
}}

{% docs test %}
    Hello Hello
{% enddocs %}

SELECT
    EMPLOYEE_ID, CUSTOMER_ID
FROM
    {{ source('public_a', 'EMPLOYEE')}}


