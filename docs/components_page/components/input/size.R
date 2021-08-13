library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(
      placeholder = "A large input...", bs_size = "lg", class_name = "mb-3"
    ),
    dbcInput(
      placeholder = "A medium input...", bs_size = "md", class_name = "mb-3"
    ),
    dbcInput(placeholder = "A small input...", bs_size = "sm")
  )
)
