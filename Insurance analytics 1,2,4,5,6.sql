use insurance_analytics;
select * from oppourtunity;
select * from brokerage;
select * from target;
select * from meeting;
select * from invoice;
select * from brokerage_fees;

# 1-No of Invoice by Accnt Exec
select Account_Executive,
	SUM(case when income_class= "Cross sell"  then 1 else 0 END) as Cross_sell_Count,
	SUM(case when income_class= "New"  then 1 else 0 END) as New_Count,
	SUM(case when income_class= "Renewal"  then 1 else 0 END) as Renewal_Count,
	SUM(case when income_class= " " then 1 else 0 END) as Null_Invoice_Count,
    COUNT(Invoice_Number) as Invoice_count
    from invoice
    Group by Account_Executive
    Order by Invoice_count desc;

# KPI 2: Yearly meeting count

select * from meeting;
SELECT 
YEAR(meeting_date) as meeting_year,
count(*) as meeting_count
from meeting
group by YEAR(meeting_date)
ORDER BY meeting_year;
        
        
# KPI 4 Stage Funnel by Revenue
 
 Select * from oppourtunity;
 
 SELECT stage, SUM(revenue_amount) as Revenue_Amount
 from oppourtunity
 group by stage
 order by revenue_amount desc;
 
 # 5. No of meeting By Account Exe
 select * from meeting;
 
 select Account_Executive, count(*) as Meeting_Count
 from meeting
 group by Account_Executive
 order by Meeting_Count desc;
 
 # 6 Top Open Opportunity
 
 Select * from Oppourtunity;
 select opportunity_name,SUM(revenue_amount) As Revenue_Amt
 from Oppourtunity
 group by opportunity_name
 order by Revenue_Amt desc
 LIMIT 5;
 
