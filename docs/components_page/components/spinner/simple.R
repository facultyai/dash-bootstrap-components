library(dashBootstrapComponents)
library(dashHtmlComponents)

spinners <- htmlDiv(
  list(
    dbcSpinner(color = "primary"),
    dbcSpinner(color = "secondary"),
    dbcSpinner(color = "success"),
    dbcSpinner(color = "warning"),
    dbcSpinner(color = "danger"),
    dbcSpinner(color = "info"),
    dbcSpinner(color = "light"),
    dbcSpinner(color = "dark")
  )
)
