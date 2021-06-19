library(dashBootstrapComponents)
library(dashHtmlComponents)

inputs <- htmlDiv(
  list(
    dbcInput(
      placeholder = "A large input...", bs_size = "lg", className = "mb-3"
    ),
    dbcInput(
      placeholder = "A medium input...", bs_size = "md", className = "mb-3"
    ),
    dbcInput(placeholder = "A small input...", bs_size = "sm")
  )
)
