library(dashBootstrapComponents)
library(dashHtmlComponents)

button <- htmlDiv(
  list(
    dbcButton("Button 1", class_name = "me-md-2"),
    dbcButton("Button 2", class_name = "me-md-2"),
    dbcButton("Button 3")
  ),
  class_name = "d-grid gap-2 d-md-flex justify-content-md-end"
)
