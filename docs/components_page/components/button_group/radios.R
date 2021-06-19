library(dashBootstrapComponents)
library(dashHtmlComponents)

button_group <- htmlDiv(
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
