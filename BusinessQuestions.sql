Use Hotel_Project

with hotelsReport as (
select * from [Report-2018]

UNION

select * from [Report-2019]

UNION

select * from [Report-2020])

select distinct arrival_date_month , stays_in_week_nights
from hotelsReport
where stays_in_week_nights >30
order by arrival_date_month , stays_in_week_nights desc;



---Questions the owner of the hotel wants to know

---Question 1 : What is the total Revenue for the three years ( 2018, 2019 and 2020) 
---and round the amount by 3 decimal


---Query:
with hotelsReport as (
select * from [Report-2018]

UNION

select * from [Report-2019]

UNION

select * from [Report-2020])

select  arrival_date_year,
ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights)*adr),3) as HotelRevenu
 from hotelsReport
 group by arrival_date_year;

----Answer
	--2018 : $ 4885444.06
	--2019 : $ 3721719.86
	--2020 : $ 14284211.24

---Question 2 : The hotel manger wants to know all the months where customers stay over 30 days in week nights

----Query
with hotelsReport as (
select * from [Report-2018]

UNION

select * from [Report-2019]

UNION

select * from [Report-2020])

select distinct arrival_date_month , stays_in_week_nights
from hotelsReport
where stays_in_week_nights >30
order by arrival_date_month , stays_in_week_nights desc;


----Answer
--August      42
--February    32
--January     40
--September   33




---Question 3 : the AVG amount of days stay over weekend group by hotel

----Query

with hotelsReport as (
select * from [Report-2018]

UNION

select * from [Report-2019]

UNION

select * from [Report-2020])

select ROUND(AVG(stays_in_weekend_nights), 2) as AVG_Stay_Days_Weekend
from hotelsReport
group by hotel;


----Answer







---Question 1 :

----Query



----Answer






---Question 1 :

----Query



----Answer






---Question 1 :

----Query



----Answer







---Question 1 :

----Query



----Answer




---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer






---Question 1 :

----Query



----Answer





---Question 1 :

----Query



----Answer




