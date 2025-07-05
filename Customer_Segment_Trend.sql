with cte as (Select *,
  Case
    When COUNT(*) OVER (PARTITION BY `Customer ID`) > 1 Then 'Repeated Customer'
    Else 'Fisrt-time Customer'
  End  AS `Customer Segment`
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
where returned <> 1.0)
select 
  `Customer Segment`,
  `Product Category`,
  count(*) as `Order Count`,
  SUM(`Total Purchase Amount`) as `Revenue`
from cte
group by `Customer Segment`, `Product category`
Order by `Customer Segment`
