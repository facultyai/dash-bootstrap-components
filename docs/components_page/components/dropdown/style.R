library(dashBootstrapComponents)
library(dashHtmlComponents)

items_style <- list(
  dbcDropdownMenuItem("Item 1"),
  dbcDropdownMenuItem("Item 2"),
  dbcDropdownMenuItem("Item 3")
)

dropdowns <- htmlDiv(
  list(
    dbcDropdownMenu(
      items_style, label = "Primary", color = "primary", class_name = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Secondary", color = "secondary", class_name = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Success", color = "success", class_name = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Warning", color = "warning", class_name = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Danger", color = "danger", class_name = "m-1"
    ),
    dbcDropdownMenu(items_style, label = "Info", color = "info",
                    class_name = "m-1")
  ),
  style = list(display = "flex", flexWrap = "wrap")
)
