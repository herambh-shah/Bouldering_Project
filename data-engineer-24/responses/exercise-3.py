import pandas as pd
#sqldf used for applying sql operation on dataframe
from pandasql import sqldf

#reading input source status change and 
df_status_change = pd.read_csv("status-changes.csv",header=0)

#Applying lag and lead window function to capture previous start date and next status.
#Since the start date in status-change tables denotes the day when the status gets change.
#Hence, We can get the start date of membership by capturing previous start date
#We captured next status to get the end reason of membership
df_status_range = sqldf("select customer_id,status,start_date, \
            lag(start_date) \
            over(partition by customer_id order by start_date) as prev_start_date, \
            lead(status) \
            over(partition by customer_id order by start_date) as next_status \
            from df_status_change order by customer_id,start_date" )
# df1.head()

#Since we want to capture the period of active membership and understand why it ends, we only collected records with status=OK.
df_membership = sqldf("select customer_id,prev_start_date as start_date,start_date as end_date, \
            ifnull(next_status,'TERMINATE') as status_end \
            from df_status_range \
            where status='OK'"
           )

print(df_membership)

