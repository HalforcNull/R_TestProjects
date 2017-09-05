#test for SQL connection 
#user name = RServerUser
#password = RServerUser123
rm(list=ls())

library(RODBC)

cat("\014") 


dbConnection <- odbcDriverConnect("driver={SQL Server}; server=192.168.1.160; database=Demo; uid=RServerUser; pwd=RServerUser123")



tb <- sqlQuery(dbConnection, 'Select * from [dbo].[UserProperty]')
