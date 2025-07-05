Select
  Gender,
  Round(AVG(`Total Purchase Amount`), 2) as `Average Revenue`,
  ROUND(SUM(`Total Purchase Amount`) / (Select SUM(`Total Purchase Amount`) from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1` where returned<>1.0) * 100, 2) as `Revenue Share`
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
Where returned <> 1.0
Group By Gender;
