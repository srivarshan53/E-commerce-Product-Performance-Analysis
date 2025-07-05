with cte as (Select 
  CONCAT('Q',CAST(CEIL(EXTRACT(MONTH FROM `Purchase Date`) / 3) AS STRING),'-', CAST(EXTRACT(YEAR FROM `Purchase Date`) AS STRING)) as quarter,
  EXTRACT(YEAR from `Purchase Date`) as year,
  SUM(`Total Purchase Amount`) as Revenue
from `ecommerce-464313.Ecommerce.E-Commerce-cleaned1`
where returned != 1.0
Group by quarter, year
Order by quarter, year)
Select * from cte where year = 2020
