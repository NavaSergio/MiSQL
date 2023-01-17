
packages <- c("tidyverse","RSQLite")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())), repos = "http://cran.rstudio.com") 
}

sapply(packages, require, character.only=TRUE)

library(DBI)
# Create an ephemeral in-memory RSQLite database
con <- dbConnect(RSQLite::SQLite(), ":memory:")

dbListTables(con)

dbWriteTable(con, "mtcars", mtcars)
dbListTables(con)

dbListFields(con, "mtcars")

dbReadTable(con, "mtcars")

res <- dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
dbFetch(res)

# Clear the result
dbClearResult(res)

# Disconnect from the database
dbDisconnect(con)
