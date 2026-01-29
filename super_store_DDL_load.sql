/*
select department,SUM(salary) over (partition by department order by salary ) from dbo.Employee;
select * from dbo.Employee;
*/
use MyDatabase
if OBJECT_ID('dbo.super_store','U') is not null 
	drop table dbo.super_store;

	Create table dbo.super_store(
		Ship_Mode nvarchar(50),
		Segment nvarchar(50),
		Country nvarchar(50),
		City nvarchar(50),
		State nvarchar(50),
		Postal_Code nvarchar(50),
		Region nvarchar(50),
		Category nvarchar(50),
		Sub_Category nvarchar(50),
		Sales float,
		Quantity int,
		Discount float,
		Profit float
	);


BULK Insert dbo.super_store 
from 'C:\Users\sufiy\Downloads\super_store_dataset\SampleSuperstore.csv' 
with(fieldterminator=',',firstrow=2,tablock);