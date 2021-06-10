library(dashBootstrapComponents)
library(dashHtmlComponents)

input_group_size <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Large", addon_type = "prepend"), dbcInput()
      ),
      size = "lg"
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Default", addon_type = "prepend"), dbcInput()
      )
    ),
    htmlBr(),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("Small", addon_type = "prepend"), dbcInput()
      ),
      size = "sm"
    )
  )
)

