Select 
  `Product Category`, 
  SUM(`Total Purchase Amount`) AS Revenue, 
  ROUND((SUM(`Total Purchase Amount`)/(Select SUM(`Total Purchase Amount`) from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1` where returned <> 1.0)) *100, 2) AS `Revenue Share`,
  COUNT(*) as `Orders Count`
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
Where returned <> 1.0
Group By `Product Category`
Order By Revenue Desc;
