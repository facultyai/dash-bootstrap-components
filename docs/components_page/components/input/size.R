library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(
      placeholder = "A large input...", size = "lg", class_name = "mb-3"
    ),
    dbcInput(
      placeholder = "A medium input...", size = "md", class_name = "mb-3"
    ),
    dbcInput(placeholder = "A small input...", size = "sm")
  )
)
