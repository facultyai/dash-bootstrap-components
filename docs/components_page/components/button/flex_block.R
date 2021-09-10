library(dashBootstrapComponents)
library(dashHtmlComponents)

button <- htmlDiv(
  list(
    dbcButton("Button 1", className = "me-md-2"),
    dbcButton("Button 2", className = "me-md-2"),
    dbcButton("Button 3")
  ),
  className = "d-grid gap-2 d-md-flex justify-content-md-end"
)
