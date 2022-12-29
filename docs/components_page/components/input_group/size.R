library(dashBootstrapComponents)

input_group <- div(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupText("Large"), dbcInput()
      ),
      size = "lg"
    ),
    br(),
    dbcInputGroup(
      list(
        dbcInputGroupText("Default"), dbcInput()
      )
    ),
    br(),
    dbcInputGroup(
      list(
        dbcInputGroupText("Small"), dbcInput()
      ),
      size = "sm"
    )
  )
)
