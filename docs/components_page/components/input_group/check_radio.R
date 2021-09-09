library(dashBootstrapComponents)
library(dashHtmlComponents)

input_groups <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupText(dbcRadioButton()),
        dbcInput()
      ),
      className = "mb-3",
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText(dbcCheckbox()),
        dbcInput()
      )
    )
  )
)
