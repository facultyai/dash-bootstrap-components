library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(
      placeholder = "A large input...", size = "lg", className = "mb-3"
    ),
    dbcInput(
      placeholder = "A medium input...", size = "md", className = "mb-3"
    ),
    dbcInput(placeholder = "A small input...", size = "sm")
  )
)
