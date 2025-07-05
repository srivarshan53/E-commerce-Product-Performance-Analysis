--> Churn Rate by Age

SELECT
  `Customer Age category`,
  ROUND(AVG(churn)*100,2) as Churn
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
group by `Customer Age category`
Order By Churn Desc;

--> Churn rate by product

SELECT
  `Product category`,
  ROUND(AVG(churn)*100,2) as Churn
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
group by `product category`
Order By Churn Desc;

--> Churn rate by gender

SELECT
  `Gender`,
  ROUND(AVG(churn)*100,2) as Churn
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
group by `Gender`
Order By Churn Desc;
