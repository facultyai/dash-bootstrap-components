library(dashBootstrapComponents)
library(dashHtmlComponents)

row <- dbcRow(
  list(
    dbcCol(htmlDiv("One of three columns")),
    dbcCol(htmlDiv("One of three columns")),
    dbcCol(htmlDiv("One of three columns"))
  ),
  class_name = "g-0"
)
