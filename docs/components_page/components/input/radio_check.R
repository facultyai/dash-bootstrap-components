library(dashBootstrapComponents)
library(dashHtmlComponents)

radioitems <- dbcFormGroup(
  list(
    dbcLabel("Choose one"),
    dbcRadioItems(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = 1,
      id = "radioitems-input"
    )
  )
)


checklist <- dbcFormGroup(
  list(
    dbcLabel("Choose a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = list(1),
      id = "checklist-input"
    )
  )
)

switches <- dbcFormGroup(
  list(
    dbcLabel("Toggle a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = list(1),
      id = "switches-input",
      switch = TRUE,
    )
  )
)

inputs_radio_check <- htmlDiv(
  list(
    dbcForm(list(radioitems, checklist, switches)),
    htmlP(id = "radioitems-checklist-output")
  )
)


app$callback(
  output("radioitems-checklist-output", "children"),
  list(
    input("radioitems-input", "value"),
    input("checklist-input", "value"),
    input("switches-input", "value")
  ),
  function(radio_items_value, checklist_value, switches_value) {
    template <- "Radio button # %d,  %d checklist item(s) and %d switch(es) selected."
    n_checkboxes <- length(checklist_value)
    n_switches <- length(switches_value)

    return(
      sprintf(template, radio_items_value, n_checkboxes, n_switches)
    )
  }
)
