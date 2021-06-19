library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Regular", color = "primary", className = "mr-1"),
    dbcButton("Active", color = "primary", active = TRUE, className = "mr-1"),
    dbcButton("Disabled", color = "primary", disabled = TRUE)
  )
)
