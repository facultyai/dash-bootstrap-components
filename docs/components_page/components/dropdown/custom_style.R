library(dashBootstrapComponents)

dropdown <- dbcDropdownMenu(
  list(
    dbcDropdownMenuItem("Item 1"),
    dbcDropdownMenuItem("Item 2"),
    dbcDropdownMenuItem("Item 3")
  ),
  label = "Custom",
  className = "m-1",
  toggle_style = list(
    "textTransform" = "uppercase",
    "background" = "#FB79B3"
  ),
  toggleClassName = "fst-italic border border-dark"
)
