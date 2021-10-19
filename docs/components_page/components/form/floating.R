library(dashBootstrapComponents)

form <- dbcFormFloating(
  list(
    dbcInput(type = "email", placeholder = "example@internet.com"),
    dbcLabel("Email address")
  )
)
