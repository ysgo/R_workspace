# rJava ����
install.packages("rJava")
install.packages("rvest")
library(rvest)
library(rJava)
library(DBI)
library(RJDBC)

drv<-JDBC(driverClass="DB_Driver",classPath="(db_connect.jar)_file_location_url")
conn<-dbConnect(drv,"jdbc:mysql://DB_IP_ADDRESS:3306/Database","UserName","Password")
query<-"select * from tableName"
dbGetQuery(conn,query)

# csv ���� �ε�(header=ù��°��, sep=������, fill=���������� ����� ����� NA�� �ֱ�)
dataframe_name<-read.csv(".csv", header = T, sep="|", quote = "", fill=TRUE)
dbWriteTable(conn,'DB table name',dataframe_name)