library(dashBootstrapComponents)

dropdown <- dbcDropdownMenu(
  label = "Menu",
  menu_variant = "dark",
  children = list(
    dbcDropdownMenuItem("Item 1"),
    dbcDropdownMenuItem("Item 2"),
    dbcDropdownMenuItem("Item 3")
  )
)
