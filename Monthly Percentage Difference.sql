select DATE_FORMAT(created_at,'%Y-%m') AS month, 
        round((sum(value) -lag(sum(value)) over()) / lag(sum(value)) over () * 100,2) revenue_diff_pct
from sf_transactions
group by month;