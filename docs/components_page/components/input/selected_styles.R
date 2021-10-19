library(dashBootstrapComponents)
library(dashHtmlComponents)

checklist <- htmlDiv(
  list(
    dbcChecklist(
      id = "checklist-selected-style",
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2),
        list(label = "Option 3", value = 3)
      ),
      label_checked_style = list("color" = "red"),
      input_checked_style = list(
        "backgroundColor" = "#fa7268",
        "borderColor" = "#ea6258"
      )
    ),
    htmlHr(),
    dbcRadioItems(
      id = "radio-selected-style",
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2),
        list(label = "Option 3", value = 3)
      ),
      labelCheckedClassName = "text-success",
      inputCheckedClassName = "border border-success bg-success"
    )
  )
)
