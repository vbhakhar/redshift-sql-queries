select AVG(cast (friend_no as Float)) as friends, sum (friend_no), count(*) as k
from 
  (select u_mobile as my_no, count(distinct e_msisdn) as friend_no
  from app129647.payment_successful
  where DATE (event_time) between '2016-08-28' and '2016-09-28'
  and e_msisdn != '(none)'
  group by my_no)