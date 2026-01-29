{% macro get_season(x) %}
    CASE
        WHEN MONTH(TO_TIMESTAMP_NTZ({{ x }})) IN (12, 1, 2) THEN 'WINTER'
        WHEN MONTH(TO_TIMESTAMP_NTZ({{ x }})) IN (3, 4, 5) THEN 'SPRING'
        WHEN MONTH(TO_TIMESTAMP_NTZ({{ x }})) IN (6, 7, 8) THEN 'SUMMER'
        WHEN MONTH(TO_TIMESTAMP_NTZ({{ x }})) IN (9, 10, 11) THEN 'AUTUMN'
    END
{% endmacro %}

{% macro day_type(x) %}
    CASE
        WHEN LOWER(DAYNAME(TO_TIMESTAMP_NTZ({{ x }}))) IN ('sat','sun') THEN 'WEEKEND'
        ELSE 'BUSINESS DAY'
    END
{% endmacro %}