library(dashBootstrapComponents)
library(dashHtmlComponents)

inline_radioitems <- dbcFormGroup(
  list(
    dbcLabel("Choose one"),
    dbcRadioItems(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = 1,
      id = "radioitems-inline-input",
      inline = TRUE,
    )
  )
)

inline_checklist <- dbcFormGroup(
  list(
    dbcLabel("Choose a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = list(1),
      id = "checklist-inline-input",
      inline = TRUE
    )
  )
)

inline_switches <- dbcFormGroup(
  list(
    dbcLabel("Toggle a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = list(1),
      id = "switches-inline-input",
      inline = TRUE,
      switch = TRUE
    )
  )
)

inputs_inline <- dbcForm(
    list(inline_radioitems, inline_checklist, inline_switches)
)
