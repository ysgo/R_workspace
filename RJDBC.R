if(!require(DBI)) install.packages("DBI")
if(!require(RJDBC)) install.packages("RJDBC")

# MariaDB or MySql 등의 원격 RDBMS와 연동
drv <- JDBC(driverClass="org.mariadb.jdbc.Driver", classPath="mariadb-java-client-1.3.6.jar")
conn <- dbConnect(drv, "jdbc:mysql://127.0.0.1:3306/test", userName, password)

dbListTables(conn)
#dbListFields(conn, "table_name")

query <- "select * from table_name"
result <- dbGetQuery(conn, query)

# Add Record
df <- data.frame(column=value)
df
query <- "insert into table_name values(?)"
dbSendUpdate(conn, query, df$column)

# Update Record
dbSendUpdate(conn, "update table_name set column=? where column=value","update_value")
dbGetQuery(conn, "select * from table_name")

# Delete Record
dbSendUpdate(conn, "delete from table_name where column=value")
dbGetQuery(conn, "select * from table_name")

dbDisconnect(conn)