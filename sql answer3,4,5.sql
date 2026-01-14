-- 3.1:Cross Sell: Target vs Achieved vs New
select * from target;
SELECT Employee_Name,
    SUM(Cross_sell_bugdet) AS target_cross_sell
FROM target
GROUP BY Employee_Name
order by target_cross_sell desc;

select * from brokerage;

SELECT Account_Executive,
    SUM(revenue_amount) AS achieved_cross_sell
FROM brokerage
WHERE income_class = 'Cross Sell'
GROUP BY Account_Executive;

select * from invoice;
SELECT Account_Executive,
    SUM(revenue_amount) AS new_cross_sell
FROM invoice
WHERE income_class = 'Cross Sell'
GROUP BY Account_Executive;


-- 3.2:NEW: Target vs Achieved vs New

SELECT Employee_Name,
    SUM(New_Budget) AS target_new
FROM target
GROUP BY Employee_Name;

SELECT Account_Executive,
    SUM(revenue_amount) AS achieved_new
FROM brokerage
WHERE income_class = 'New'
GROUP BY Account_Executive;

SELECT Account_Executive,
    SUM(revenue_amount) AS new_new
FROM invoice
WHERE income_class = 'New'
GROUP BY Account_Executive;

-- 3.3Renewal: Target vs Achieved vs New

SELECT Employee_Name,
    SUM(Renewal_Budget) AS target_renewal
FROM target
GROUP BY Employee_Name;

SELECT Account_Executive,
    SUM(revenue_amount) AS achieved_renewal
FROM brokerage
WHERE income_class = 'Renewal'
GROUP BY Account_Executive;

SELECT 
    Account_Executive,
    SUM(revenue_amount) AS new_renewal
FROM invoice
WHERE income_class = 'Renewal'
GROUP BY Account_Executive;







