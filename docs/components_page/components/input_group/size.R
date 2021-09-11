library(dashBootstrapComponents)
library(dashHtmlComponents)

input_group <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupText("Large"), dbcInput()
      ),
      size = "lg"
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupText("Default"), dbcInput()
      )
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupText("Small"), dbcInput()
      ),
      size = "sm"
    )
  )
)
