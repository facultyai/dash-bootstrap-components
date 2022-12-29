library(dashBootstrapComponents)

spinners <- div(
  list(
    dbcSpinner(size = "sm"),
    html$hr(),
    dbcSpinner(spinner_style = list(width = "3rem", height = "3rem"))
  )
)
