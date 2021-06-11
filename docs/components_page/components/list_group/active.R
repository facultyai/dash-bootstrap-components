library(dashBootstrapComponents)

list_group_active <- dbcListGroup(
  list(
    dbcListGroupItem("Active item", active = TRUE),
    dbcListGroupItem("Item 2"),
    dbcListGroupItem("Item 3")
  )
)
