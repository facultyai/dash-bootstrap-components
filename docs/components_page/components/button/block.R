library(dashBootstrapComponents)
library(dashHtmlComponents)

button <- htmlDiv(
  list(
    dbcButton("Block button", color = "primary"),
    dbcButton("Block button", color = "secondary")
  ),
  className = "d-grid gap-2"
)
