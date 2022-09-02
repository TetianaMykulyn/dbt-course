select 
-- from raw orders
o.OrderId,
o.OrderDate,
o.ShipDate,
o.ShipMode,
o.OrderSellingPrice - o.OrderCostPrice as OrderProfit,
o.OrderCostPrice,
o.OrderSellingPrice,
-- from raw customer
c.CustomerId,
c.CustomerName, 
c.Segment, 
c.Country, 
-- from raw product
p.ProductId,
p.Category, 
p.ProductName, 
p.SubCategory 
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.CustomerID = c.CustomerId  
left join {{ ref('raw_product') }} as p
on o.ProductID = p.ProductId