--QUERY SQL

--exploratory queries
select * from chocolate;
select min(rating), max(rating) from chocolate;                    --minimum rating is 1.0, maximum rating is 4.0
select count(distinct company) from chocolate;                     --502 distinct companies
select count(distinct country_of_bean_origin) from chocolate;      --62 distinct countries of bean origin
select min(cocoa_percent), max(cocoa_percent) from chocolate;      --minimum cocoa percentage is 42, maximum cocoa percentage is 100

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
