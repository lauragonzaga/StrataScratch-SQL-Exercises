select from_user, 
        count(*) total_emails,
        row_number() over(order by count(*) desc, from_user) as ranking
from google_gmail_emails
group by from_user;