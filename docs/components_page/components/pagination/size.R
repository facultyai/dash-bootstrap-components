library(dashBootstrapComponents)

pagination <- div(
  list(
    div("Small"),
    dbcPagination(
      max_value = 5,
      size = "sm"
    ),
    div("Default"),
    dbcPagination(
      max_value = 5
    ),
    div("Large"),
    dbcPagination(
      max_value = 5,
      size = "lg"
    )
  )
)
