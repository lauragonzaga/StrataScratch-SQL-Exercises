select distinct a1.user_id
from amazon_transactions a1
join amazon_transactions a2
    on a1.user_id = a2.user_id
    and a1.id <> a2.id
    and DATEDIFF(a1.created_At,a2.created_at) BETWEEN 0 AND 7
order by a1.user_id