use MyDatabase;

-- Exploring the sample
/*
select distinct Ship_Mode from dbo.super_store;
select distinct Segment from dbo.super_store;
select distinct Country from dbo.super_store;
select distinct City from dbo.super_store;
select distinct State from dbo.super_store;
select distinct Postal_Code from dbo.super_store;
select distinct Region from dbo.super_store;
select distinct Category from dbo.super_store;
select distinct Sub_Category from dbo.super_store;
select distinct Sales from dbo.super_store;
select distinct Quantity from dbo.super_store;
select distinct Discount from dbo.super_store;
select distinct Profit from dbo.super_store;*/




select
	min(Sales) min_sales,
	max(Sales) sales_max,
	min(Quantity) quan_min,
	max(Quantity) quan_max,
	min(Discount) discount_min,
	max(Discount) discount_max
from dbo.super_store;	


Select Round(AVG(Sales),2) Avg_sales,
	Round(SUM(Sales),2) Total_Sales,
	Round(Avg(Quantity),2) Avg_Quantity,
	Round(Sum(Quantity),2) Total_Quantity,
	Round(avg(profit),2) Avg_profit,
	Round(sum(profit),2) Total_profit
	from dbo.super_store;


Select Count(*) as Total_Transaction
from dbo.super_store;


