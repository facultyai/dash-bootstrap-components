library(dashBootstrapComponents)
library(dashCoreComponents)

pagination <- htmlDiv(
  list(
    htmlDiv("Collapse long pagination objects using ellipsis"),
    dbcPagination(max_value = 10, fully_expanded = FALSE),
    htmlDiv("If space won't be saved, it won't be collapsed"),
    dbcPagination(max_value = 5, fully_expanded = FALSE)
  )
)
