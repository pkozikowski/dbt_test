{% test my_custom_test_ng(model, column_name) %}

    SELECT *
    FROM {{ model }}
    WHERE {{ column_name }} IS NULL

{% endtest %}