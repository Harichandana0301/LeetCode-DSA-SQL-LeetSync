/* Write your T-SQL query statement below */
select sell_date, count(distinct(product)) as num_sold,
STRING_AGG(product,',') within group (order by product) as products
from
(SELECT DISTINCT sell_date, product FROM Activities) T
group by sell_date
order by sell_date