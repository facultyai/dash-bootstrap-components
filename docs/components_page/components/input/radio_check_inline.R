library(dashBootstrapComponents)
library(dashHtmlComponents)

inline_radioitems <- htmlDiv(
  list(
    dbcLabel("Choose one"),
    dbcRadioItems(
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2)
      ),
      value = 1,
      id = "radioitems-inline-input",
      inline = TRUE,
    )
  )
)

inline_checklist <- htmlDiv(
  list(
    dbcLabel("Choose a bunch"),
    dbcChecklist(
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2)
      ),
      value = list(),
      id = "checklist-inline-input",
      inline = TRUE
    )
  )
)

inline_switches <- htmlDiv(
  list(
    dbcLabel("Toggle a bunch"),
    dbcChecklist(
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2)
      ),
      value = list(),
      id = "switches-inline-input",
      inline = TRUE,
      switch = TRUE
    )
  )
)

inline_inputs <- dbcForm(
  list(inline_radioitems, inline_checklist, inline_switches)
)
