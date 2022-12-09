--Dataset from https://www.kaggle.com/datasets/dc0e09e5c6a808eedf06d57474263925202d84f9c35fabd6a447eab52fb1957f

--Exploratory Analysis

select distinct company from layoffs;
select count(distinct company) from layoffs;
select distinct industry from layoffs;
select count(distinct industry) from layoffs;

--Top 5 companies with the most number of layoffs: Meta, Amazon, Uber, Booking.com, and Cisco
select distinct company
,sum(total_laid_off)
from layoffs
group by company
order by sum(total_laid_off) desc;

--Top 3 industries with the most number of layoffs: Transportation, Consumer, and Retail
select distinct company
,sum(total_laid_off)
from layoffs
group by company
order by sum(total_laid_off) desc;

--Tableau Dashboard
--https://public.tableau.com/views/Layoffs2020-2022_16705577563560/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link
