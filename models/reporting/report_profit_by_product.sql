select
    ProductId,
    ProductName,
    Category,
    SubCategory,
    sum(OrderProfit) as Profit
from 
    {{ ref('stg_orders') }}
group by 
    ProductId,
    ProductName,
    Category,
    SubCategory
