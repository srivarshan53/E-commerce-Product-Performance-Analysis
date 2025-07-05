With cte as (Select 
  `Customer Age Category`,
  `Product Category`,
  SUM(`Total Purchase Amount`) as `Total Revenue`
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
Where returned <> 1.0
Group by `Customer Age Category`,`Product category`),
cte2 as (select 
  `Customer Age Category`,
  `Product category`,
  `Total Revenue`,
  row_number() over(partition by `Customer Age Category` order by `total revenue` desc) as Rn
from cte)
Select 
  `Customer Age Category`,
  `Product category`,
  `Total Revenue`
from cte2
where rn = 1
order by `Customer Age Category`
