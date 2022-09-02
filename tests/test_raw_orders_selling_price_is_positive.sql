with
orders as(
    select * from {{ ref('raw_orders') }}
)

select
    OrderId,
    sum(OrderSellingPrice) as total_sp
from orders
group by OrderId
having total_sp<0