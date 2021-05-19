
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


button_group_dropdown <- dbcButtonGroup(
  list(
    dbcButton("First"),
    dbcButton("Second"),
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("Item 1"),
        dbcDropdownMenuItem("Item 2")
      ),
      label = "Dropdown",
      group = TRUE,
    )
  )
)

button_group_radios <- htmlDiv(
  list(
    dbcRadioItems(
      id = "radios",
      className = "btn-group",
      labelClassName = "btn btn-secondary",
      labelCheckedClassName = "active",
      options = list(
          list(label = "Option 1", value = 1),
          list(label = "Option 2", value = 2),
          list(label = "Option 3", value = 3)
      ),
      value = 1,
    ),
    htmlDiv(id = "output")
  ),
  className = "radio-group",
)


app$callback(
  output("output", "children"),
  list(input("radios", "value")),
  function(value) {
    return(sprintf("Selected value: %d", value))
  }
)


button_group_simple <- dbcButtonGroup(
  list(
    dbcButton("Left"), dbcButton("Middle"),
    dbcButton("Right")
  )
)

button_groups_size <- htmlDiv(
  list(
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "lg",
      className = "mr-1",
    ),
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "md",
      className = "mr-1",
    ),
    dbcButtonGroup(
      list(
        dbcButton("Left"), dbcButton("Middle"),
        dbcButton("Right")
      ),
      size = "sm",
    )
  )
)

button_group_vertical <- dbcButtonGroup(
  list(
    dbcButton("First"),
    dbcButton("Second"),
    dbcDropdownMenu(
      list(
        dbcDropdownMenuItem("Item 1"),
        dbcDropdownMenuItem("Item 2")
      ),
      label = "Dropdown",
      group = TRUE,
    )
  ),
  vertical = TRUE
)


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Button Simple example"),
      button_group_simple,
      htmlHr(),
      htmlH2("Size"),
      button_groups_size,
      htmlHr(),
      htmlH2("Dropdown"),
      button_group_dropdown,
      htmlHr(),
      htmlH2("Vertical variation"),
      button_group_vertical,
      htmlHr(),
      htmlH2("RadioItems as ButtonGroup"),
      button_group_radios
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE)
