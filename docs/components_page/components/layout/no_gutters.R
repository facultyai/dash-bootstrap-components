library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- dbcRow(
  list(
    dbcCol(htmlDiv("One of three columns")),
    dbcCol(htmlDiv("One of three columns")),
    dbcCol(htmlDiv("One of three columns"))
  ),
  className = "g-0"
)
