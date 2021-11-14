library(dashBootstrapComponents)

inputs <- div(
  list(
    dbcInput(placeholder = "Valid input...", valid = TRUE, className = "mb-3"),
    dbcInput(placeholder = "Invalid input...", invalid = TRUE)
  )
)
