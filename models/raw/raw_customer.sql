{{
    config(
        materialized='table'
    )
}}

select * 
from dbt-course-361220.raw.customers