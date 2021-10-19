library(dashBootstrapComponents)
library(dashCoreComponents)

pagination <- htmlDiv(
  list(
    dbcPagination(max_value = 5, first_last = TRUE),
    dbcPagination(max_value = 5, previous_next = TRUE),
    dbcPagination(max_value = 5, first_last = TRUE, previous_next = TRUE)
  )
)
