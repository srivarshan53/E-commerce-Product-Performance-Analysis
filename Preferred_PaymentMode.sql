Select * from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`;

Select `Payment Method`, `Product category`, count(*) as Count from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
where returned <> 1.0
group by `Payment Method`,`Product category`
Order By Count Desc, `Payment Method`;
