library(dashBootstrapComponents)
library(dashHtmlComponents)

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
