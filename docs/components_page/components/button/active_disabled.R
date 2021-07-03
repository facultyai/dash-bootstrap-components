library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Regular", color = "primary", class_name = "mr-1"),
    dbcButton("Active", color = "primary", active = TRUE, class_name = "mr-1"),
    dbcButton("Disabled", color = "primary", disabled = TRUE)
  )
)
