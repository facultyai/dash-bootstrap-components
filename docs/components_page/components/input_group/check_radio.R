library(dashBootstrapComponents)
library(dashHtmlComponents)

input_groups <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon(dbcRadioButton(), addon_type = "prepend"),
        dbcInput()
      ),
      class_name = "mb-3",
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon(dbcCheckbox(), addon_type = "prepend"),
        dbcInput()
      )
    )
  )
)
