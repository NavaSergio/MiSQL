mydb <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")
dbWriteTable(mydb, "salesman", salesman)
dbWriteTable(mydb, "customer", customer)
dbWriteTable(mydb, "orders", orders)
dbWriteTable(mydb, "company_mast", company_mast)
dbWriteTable(mydb, "item_mast", item_mast)
dbWriteTable(mydb, "emp_department", emp_department)
dbWriteTable(mydb, "emp_details", emp_details)
dbListTables(mydb)
dbDisconnect(mydb)