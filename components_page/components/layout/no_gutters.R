library(dashBootstrapComponents)
library(dashHtmlComponents)

row_no_gutters <- dbcRow(
  list(
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light"),
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light"),
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light")
  ),
  no_gutters = TRUE,
)
