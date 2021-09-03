library(dashBootstrapComponents)
library(dashHtmlComponents)

button_group <- htmlDiv(
  list(
    dbcRadioItems(
      id = "radios",
      class_name = "btn-group",
      input_class_name = "btn-check",
      label_class_name = "btn btn-outline-primary",
      label_checked_class_name = "active",
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2),
        list(label = "Option 3", value = 3)
      ),
      value = 1,
    ),
    htmlDiv(id = "output")
  ),
  class_name = "radio-group",
)


app$callback(
  output("output", "children"),
  list(input("radios", "value")),
  function(value) {
    return(sprintf("Selected value: %d", value))
  }
)
