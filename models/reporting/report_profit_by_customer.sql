select
    CustomerId,
    Segment,
    Country,
    sum(OrderProfit) as Profit
from
    {{ ref('stg_orders') }}
group by
    CustomerId,
    Segment,
    Country