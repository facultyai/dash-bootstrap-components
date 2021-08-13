library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(placeholder = "Valid input...", valid = TRUE, class_name = "mb-3"),
    dbcInput(placeholder = "Invalid input...", invalid = TRUE)
  )
)
