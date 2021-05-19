
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

# --------
items <- list(
  dbcDropdownMenuItem("Action"),
  dbcDropdownMenuItem("Another action"),
  dbcDropdownMenuItem("Something else here"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Something else here after the divider")
)

dropdown_alignment <- dbcRow(
  list(
    dbcCol(
      dbcDropdownMenu(
        label = "Left-aligned menu (default)",
        children = items,
        right = FALSE
      )
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Right-aligned menu", children = items, right = TRUE
      )
    )
  )
)

# -------------
dropdown_content <- dbcDropdownMenu(
  list(
    dbcDropdownMenuItem("Header", header = TRUE),
    dbcDropdownMenuItem("An item"),
    dbcDropdownMenuItem(divider = TRUE),
    dbcDropdownMenuItem("Active and disabled", header = TRUE),
    dbcDropdownMenuItem("Active item", active = TRUE),
    dbcDropdownMenuItem("Disabled item", disabled = TRUE),
    dbcDropdownMenuItem(divider = TRUE),
    htmlP(
      "You can have other content here like text if you like.",
      className = "text-muted px-4 mt-4"
    )
  ),
  label = "Menu"
)

#----------------

items_direction <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown_direction <- dbcRow(
  list(
    dbcCol(
      dbcDropdownMenu(
        label = "Dropdown (default)", children = items_direction,
        direction = "down"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropleft", children = items_direction, direction = "left"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(
        label = "Dropright", children = items_direction, direction = "right"
      ),
      width = "auto"
    ),
    dbcCol(
      dbcDropdownMenu(label = "Dropup", children = items_direction,
                      direction = "up"),
      width = "auto"
    )
  ),
  justify = "between"
)

#---------------


dropdown_menu_items <- htmlDiv(
  list(
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("A button", id = "dropdown-button", n_clicks = 0),
        dbcDropdownMenuItem(
          "Internal link", href = "/l/components/dropdown_menu"
        ),
        dbcDropdownMenuItem(
          "External Link", href = "https://github.com"
        ),
        dbcDropdownMenuItem(
          "External relative",
          href = "/l/components/dropdown_menu",
          external_link = TRUE
        )
      ),
      label = "Menu"
    ),
    htmlP(id = "item-clicks", className = "mt-3")
  )
)


app$callback(
  output("item-clicks", "children"),
  list(input("dropdown-button", "n_clicks")),
  function(n) {
    if (n > 0) {
      return(sprintf("Clicked %d times.", n))
    }
    return(sprintf("Button not clicked yet"))
  }
)

#----------


dropdown_simple <- dbcDropdownMenu(
  list(
    dbcDropdownMenuItem("Item 1"),
    dbcDropdownMenuItem("Item 2"),
    dbcDropdownMenuItem("Item 3")
  ),
  label = "Menu",
)

#--------------

items_size <- list(
  dbcDropdownMenuItem("First"),
  dbcDropdownMenuItem(divider = TRUE),
  dbcDropdownMenuItem("Second")
)

dropdown_size <- htmlDiv(
  list(
    dbcDropdownMenu(
        label = "large dropdown",
        bs_size = "lg",
        children = items_size,
        className = "mb-3"
    ),
    dbcDropdownMenu(
        label = "normal dropdown", children = items_size, className = "mb-3"
    ),
    dbcDropdownMenu(label = "small dropdown", bs_size = "sm",
                    children = items_size)
  )
)

#------------

items_style <- list(
  dbcDropdownMenuItem("Item 1"),
  dbcDropdownMenuItem("Item 2"),
  dbcDropdownMenuItem("Item 3")
)

dropdowns_style <- htmlDiv(
  list(
    dbcDropdownMenu(
      items_style, label = "Primary", color = "primary", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Secondary", color = "secondary", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Success", color = "success", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Warning", color = "warning", className = "m-1"
    ),
    dbcDropdownMenu(
      items_style, label = "Danger", color = "danger", className = "m-1"
    ),
    dbcDropdownMenu(items_style, label = "Info", color = "info",
                    className = "m-1"),
    dbcDropdownMenu(items_style, label = "Link", color = "link",
                    className = "m-1")
  ),
  style = list(display = "flex", flexWrap = "wrap")
)
#-----------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Dropdown Simple example"),
      dropdown_simple,
      htmlHr(),
      htmlH2("Dropdown MenuItems"),
      dropdown_menu_items,
      htmlHr(),
      htmlH2("Dropdown -  styling the toggle"),
      dropdowns_style,
      htmlHr(),
      htmlH2("DropdownMenu sizing"),
      dropdown_size,
      htmlHr(),
      htmlH2("DropdownMenu direction"),
      dropdown_direction,
      htmlHr(),
      htmlH2("DropdownMenu alignment"),
      dropdown_alignment,
      htmlHr(),
      htmlH2("DropdownMenu content"),
      dropdown_content
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
