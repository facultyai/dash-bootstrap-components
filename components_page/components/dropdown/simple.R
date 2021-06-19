library(dashBootstrapComponents)

dropdown <- dbcDropdownMenu(
  list(
    dbcDropdownMenuItem("Item 1"),
    dbcDropdownMenuItem("Item 2"),
    dbcDropdownMenuItem("Item 3")
  ),
  label = "Menu",
)
