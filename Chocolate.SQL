--QUERY SQL

--exploratory queries
select * from chocolate;
select min(rating), max(rating) from chocolate;                --minimum rating is 1.0, maximum rating is 4.0
select count(distinct company) from chocolate;                 --502 distinct companies
select count(distinct country_of_bean_origin) from chocolate;  --62 distinct countries of bean origin
select min(cocoa_percent), max(cocoa_percent) from chocolate;  --minimum cocoa percentage is 42, maximum cocoa percentage is 100
select company, count(rating) from chocolate
where rating=4.0
group by company
order by count(rating) desc;                                   --the top 3 companies with the most number of '4.0' ratings are Soma, Bonnat, and Arete
select company, avg(rating) from chocolate
group by company
order by avg(rating) desc;                                     --the top 5 companies with the highest all-time rating are Heirloom Cacao Preservation (Zokoko), Ocelot, Matale, Patric, and Idilio (Felchlin)
select company_location, count(rating) from chocolate
where rating=4.0
group by company_location
order by count(rating) desc;                                   --the top 3 company locations with the most number of '4.0' ratings are U.S.A., France, and Canada
select company_location, avg(rating) from chocolate
group by company_location
order by avg(rating) desc;                                     --the top 5 company locations with the highest all-time rating are Chile, Argentina, Poland, Sao Tome, and U.A.E.
select company, count(rating) from chocolate
where rating=4.0
group by company
order by count(rating) desc;                                   --the top 3 countries of bean origin with the most number of '4.0' ratings are Venezuela, Peru, and Madagascar
select country_of_bean_origin, avg(rating) from chocolate
group by country_of_bean_origin
order by avg(rating) desc;                                     --the top 5 countries of bean origin with the highest all-time rating are Sao Tome & Principe, Solomon Islands, Congo, Thailand, and Cuba


--drop column
alter table chocolate
drop column ref;

--edit row values
update chocolate
set cocoa_butter=case cocoa_butter
when like '%not%' then 'N'
else 'Y'
end;
update chocolate
set vanilla=case vanilla
when like '%not%' then 'N'
else 'Y'
end;
update chocolate
set lecithin=case lecithin
when like '%not%' then 'N'
else 'Y'
end;
update chocolate
set salt=case salt
when like '%not%' then 'N'
else 'Y'
end;
update chocolate
set sugar=case sugar
when like '%not%' then 'N'
else 'Y'
end;
update chocolate
set sweetener_without_sugar=case sweetener_without_sugar
when like '%not%' then 'N'
else 'Y'
end;


--TABLEAU DASHBOARD
--
