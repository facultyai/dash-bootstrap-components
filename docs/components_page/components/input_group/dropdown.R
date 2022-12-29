library(dashBootstrapComponents)

dropdown_menu_items <- list(
  dbcDropdownMenuItem("Deep thought", id = "dropdown-menu-item-1"),
  dbcDropdownMenuItem("Hal", id = "dropdown-menu-item-2"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Clear", id = "dropdown-menu-item-clear")
)

input_group <- dbcInputGroup(
  list(
    dbcDropdownMenu(
      dropdown_menu_items,
      label = "Generate"
    ),
    dbcInput(id = "input-group-dropdown-input", placeholder = "name")
  )
)


app$callback(
  output("input-group-dropdown-input", "value"),
  list(
    input("dropdown-menu-item-1", "n_clicks"),
    input("dropdown-menu-item-2", "n_clicks"),
    input("dropdown-menu-item-clear", "n_clicks")
  ),
  function(n1, n2, n_clear) {
    ctx <- app$callback_context()

    button_id <- if (ctx$triggered$value) {
      unlist(strsplit(ctx$triggered$prop_id, "[.]"))[1]
    } else {
      return("")
    }

    if (button_id == "dropdown-menu-item-clear") {
      return("")
    } else if (button_id == "dropdown-menu-item-1") {
      names <- c("Arthur Dent", "Ford Prefect", "Trillian Astra")
      return(sample(names, 1))
    } else {
      names <- c("David Bowman", "Frank Poole", "Dr. Heywood Floyd")
      return(sample(names, 1))
    }
  }
)
