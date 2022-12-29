library(dashBootstrapComponents)

button_group <- dbcButtonGroup(
  list(
    dbcButton("First"),
    dbcButton("Second"),
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("Item 1"),
        dbcDropdownMenuItem("Item 2")
      ),
      label = "Dropdown",
      group = TRUE
    )
  ),
  vertical = TRUE
)
