library(dashBootstrapComponents)
library(dashHtmlComponents)

buttons <- htmlDiv(
  list(
    dbcButton("Large button", size = "lg", class_name = "mr-1"),
    dbcButton("Regular button", class_name = "mr-1"),
    dbcButton("Small button", size = "sm")
  )
)
