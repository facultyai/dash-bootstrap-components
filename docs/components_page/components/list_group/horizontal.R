library(dashBootstrapComponents)

list_group <- div(
  list(
    dbcListGroup(
      list(
        dbcListGroupItem("Item 1"),
        dbcListGroupItem("Item 2"),
        dbcListGroupItem("Item 3")
      ),
      horizontal = TRUE,
      className = "mb-2"
    ),
    dbcListGroup(
      list(
        dbcListGroupItem("Item 1"),
        dbcListGroupItem("Item 2"),
        dbcListGroupItem("Item 3")
      ),
      horizontal = "lg",
    )
  )
)
