

-- How many Customers has gotten the discount and how much total discount has givven

Select *,
	ROUND(Total_amount_of_Discount/NO_of_Customers,2) as avg_Discount_amount                                     
	from (select
			Count(*) as NO_of_Customers,
			Round(SUM(Discount*Sales),3) as Total_amount_of_Discount 
		from dbo.super_store
		where Discount <> 0 
) t;
-- How many product are sold in loss?
select 
	count(*) NO_of_Product,
	round(sum(Profit),3) as No_of_product_sold_in_loss
from dbo.super_store where Profit < 0;

-- what category of product are Sold in loss ?
select 
	distinct Category
from dbo.super_store where Profit < 0;

-- The NO. of customers form region  who has gotten the most dicount? and How much?
select 
	Region,
	count(*) NO_of_Discount,
	Round(SUM(Discount*Sales),3) as Amount_of_Discount
from dbo.super_store 
where Discount>0 group by Region;
-- Sales By Ship mode 
Select
	Ship_Mode,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Ship_Mode 
order by Round(sum(Sales),3) desc;
-- Sales By segment
Select
	Segment,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Segment 
order by Round(sum(Sales),3) desc;
-- Sales by City top 7 and bottom 7
Select top 7
	City,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by City 
order by Round(sum(Sales),3) desc;
-- Botttom 7
Select top 7
	City,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by City 
order by Round(sum(Sales),3) asc;
-- sales by state
Select top 7
	State,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by State 
order by Round(sum(Sales),3) desc;
-- Bottom 7
Select top 7
	State,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by State 
order by Round(sum(Sales),3) asc;

-- Sales By Region
Select
	Region,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Region 
order by Round(sum(Sales),3) desc;
-- Sales by category
Select
	Category,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Category 
order by Round(sum(Sales),3) desc;
-- sales by Subcategory top 6 and bottom 6
Select top 6
	Sub_Category,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Sub_Category 
order by Round(sum(Sales),3) desc;
--Bottom 6
Select top 6
	Sub_Category,
	Round(sum(Sales),3) as Total_sales 
from dbo.super_store
group by Sub_Category 
order by Round(sum(Sales),3) asc;

-- What catoegory has the most discount offered?

select
	Category,Count(Discount) Count_of_discount
from dbo.super_store
where Discount <> 0 
Group by Category;

-- What sub-catoegory has the most discount offered?

select
	Category,
	Sub_Category,Count(Discount) Count_of_discount
from dbo.super_store
where Discount <> 0 
Group by Category,Sub_Category
order by count(Discount) desc;

-- what segments are the most discounted ?

select
	Segment,Count(Discount) Count_of_discount
from dbo.super_store
where Discount <> 0 
Group by Segment
order by count(Discount) desc;

