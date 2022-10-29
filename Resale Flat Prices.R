# R SCRIPT

#import csv datasets
df2017onwards <- read.csv("C:\\Users\\pangl\\Downloads\\resale-flat-prices-based-on-registration-date-from-jan-2017-onwards.csv")
df2012to2014 <- read.csv("C:\\Users\\pangl\\Downloads\\resale-flat-prices-based-on-registration-date-from-mar-2012-to-dec-2014.csv")
df2000to2012 <- read.csv("C:\\Users\\pangl\\Downloads\\resale-flat-prices-based-on-approval-date-2000-feb-2012.csv")
df2015to2016 <- read.csv("C:\\Users\\pangl\\Downloads\\resale-flat-prices-based-on-registration-date-from-jan-2015-to-dec-2016.csv")
df1990to1999 <- read.csv("C:\\Users\\pangl\\Downloads\\resale-flat-prices-based-on-approval-date-1990-1999.csv")

#convert column to character format to prepare for combining dfs
df2015to2016$remaining_lease <- as.character(df2015to2016$remaining_lease)

#combine dfs
df <- bind_rows(df1990to1999,df2000to2012,df2012to2014,df2015to2016,df2017onwards)

#drop columns
df = select(dfall, -1, -5, -6)

#convert column to date format, filling in day as 01
df <- df %>% 
rename("date" = "month")
df$date <- as.Date(paste(df$date,"-01",sep=""))

#extract number of years in remaining lease, rounded down, in numeric format
df$remaining_lease <- as.numeric(substr(df$remaining_lease, 1, 2))

#export cleaned df
write.csv(df,"C:\\Users\\pangl\\Downloads\\Resale-Prices-1990-to-2022.csv", row.names = TRUE)


# TABLEAU DASHBOARD
# https://public.tableau.com/views/ResaleFlatPricesinSingapore1990-2022/Dashboard?:language=en-US&:display_count=n&:origin=viz_share_link
