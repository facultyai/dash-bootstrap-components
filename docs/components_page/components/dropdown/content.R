library(dashBootstrapComponents)

dropdown <- dbcDropdownMenu(
  list(
    dbcDropdownMenuItem("Header", header = TRUE),
    dbcDropdownMenuItem("An item"),
    dbcDropdownMenuItem(divider = TRUE),
    dbcDropdownMenuItem("Active and disabled", header = TRUE),
    dbcDropdownMenuItem("Active item", active = TRUE),
    dbcDropdownMenuItem("Disabled item", disabled = TRUE),
    dbcDropdownMenuItem(divider = TRUE),
    p(
      "You can have other content here like text if you like.",
      className = "text-muted px-4 mt-4"
    )
  ),
  label = "Menu"
)
