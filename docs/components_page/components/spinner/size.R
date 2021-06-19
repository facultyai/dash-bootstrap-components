library(dashBootstrapComponents)
library(dashHtmlComponents)

spinners <- htmlDiv(
  list(
    dbcSpinner(size = "sm"),
    htmlHr(),
    dbcSpinner(spinner_style = list(width = "3rem", height = "3rem"))
  )
)
