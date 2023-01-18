orders <- read.delim("clipboard")



library(readxl)
salesman       <- read_excel("tablas.xlsx", sheet = "salesman")
customer       <- read_excel("tablas.xlsx", sheet = "customer")
orders         <- read_excel("tablas.xlsx", sheet = "orders")
company_mast   <- read_excel("tablas.xlsx", sheet = "company_mast")
item_mast      <- read_excel("tablas.xlsx", sheet = "item_mast")
emp_department <- read_excel("tablas.xlsx", sheet = "emp_department")
emp_details    <- read_excel("tablas.xlsx", sheet = "emp_details")
