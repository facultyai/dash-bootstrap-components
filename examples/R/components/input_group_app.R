
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# ---------- button

input_group_button <- dbcInputGroup(
  list(
    dbcInputGroupAddon(
      dbcButton("Random name", id = "input-group-button", n_clicks = 0),
      addon_type = "prepend",
    ),
    dbcInput(id = "input-group-button-input", placeholder = "name")
  )
)


app$callback(
  output("input-group-button-input", "value"),
  list(input("input-group-button", "n_clicks")),
  function(n_clicks) {
    if (n_clicks > 0) {
      names <- c("Arthur Dent", "Ford Prefect", "Trillian Astra")
      return(sample(names, 1))

    }
    return("")
  }
)

# ------------- check_radio


input_groups_check_radio <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon(dbcRadioButton(), addon_type = "prepend"),
        dbcInput()
      ),
      className = "mb-3",
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon(dbcCheckbox(), addon_type = "prepend"),
        dbcInput()
      )
    )
  )
)

# --------- dropdown


dropdown_menu_items <- list(
    dbcDropdownMenuItem("Deep thought", id = "dropdown-menu-item-1"),
    dbcDropdownMenuItem("Hal", id = "dropdown-menu-item-2"),
    dbcDropdownMenuItem(divider = TRUE),
    dbcDropdownMenuItem("Clear", id = "dropdown-menu-item-clear")
)

input_group_dropdown <- dbcInputGroup(
  list(
    dbcDropdownMenu(
      dropdown_menu_items, label = "Generate", addon_type = "prepend"
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
    } else return("")

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

# ------------- simple

input_groups_simple <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon("@", addon_type = "prepend"),
        dbcInput(placeholder = "Username")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInput(placeholder = "Recipients username"),
        dbcInputGroupAddon("@example.com", addon_type = "append")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("$", addon_type = "prepend"),
        dbcInput(placeholder = "Amount", type = "number"),
        dbcInputGroupAddon(".00", addon_type = "append")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("With textarea", addon_type = "prepend"),
        dbcTextarea()
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcSelect(
          options = list(
            list(label =  "Option 1", value = 1),
            list(label =  "Option 2", value = 2)
          )
        ),
        dbcInputGroupAddon("With select", addon_type = "append")
      )
    )
  )
)

# ------------ size


input_group_size <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Large", addon_type = "prepend"), dbcInput()
      ),
      size = "lg"
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Default", addon_type = "prepend"), dbcInput()
      )
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Small", addon_type = "prepend"), dbcInput()
      ),
      size = "sm"
    )
  )
)


#--------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("InputGroup - simple example"),
      input_groups_simple,
      htmlHr(),
      htmlH2("InputGroup - sizing"),
      input_group_size,
      htmlHr(),
      htmlH2("InputGroup - checkbox and radios"),
      input_groups_check_radio,
      htmlHr(),
      htmlH2("InputGroup - button addons"),
      input_group_button,
      htmlHr(),
      htmlH2("InputGroup - DropdownMenu addons"),
      input_group_dropdown
    ),
  className = "p-5")
)

app$run_server(debug = TRUE)
