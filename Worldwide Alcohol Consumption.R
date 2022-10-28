# R SCRIPT

#import csv datasets
df1 <- read.csv("C:\\Users\\pangl\\Downloads\\alcohol-consumption-vs-gdp-per-capita.csv")

#check for columns containing NA and omit rows containing NA
apply(df1, 2, function(x) any(is.na(x)))
df1 <- na.omit(df1)

#export cleaned df
write.csv(df1,"C:\\Users\\pangl\\Downloads\\Alcohol-Consumption.csv", row.names = TRUE)


# TABLEAU DASHBOARD
# https://public.tableau.com/app/profile/lu.woon/viz/WorldwideAlcoholConsumption2000-2018/AlcoholConsumption
