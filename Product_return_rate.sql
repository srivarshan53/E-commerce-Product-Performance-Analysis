Select 
  `Product Category`,
  ROUND(AVG(returned)*100, 2) as returnRate 
from
`ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
group by `Product category`
Order By `returnRate` Desc;
