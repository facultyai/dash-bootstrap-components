library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(placeholder = "Valid input...", valid = TRUE, className = "mb-3"),
    dbcInput(placeholder = "Invalid input...", invalid = TRUE)
  )
)
