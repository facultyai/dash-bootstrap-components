library(dashBootstrapComponents)

input_groups <- div(
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
