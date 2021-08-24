library(dashBootstrapComponents)
library(dashHtmlComponents)

pagination <- htmlDiv(
  list(
    htmlDiv("Small"),
    dbcPagination(
      max_value = 5,
      size = "sm"
    ),
    htmlDiv("Default"),
    dbcPagination(
      max_value = 5
    ),
    htmlDiv("Large"),
    dbcPagination(
      max_value = 5,
      size = "lg"
    )
  )
)
