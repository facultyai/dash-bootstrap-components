library(dashBootstrapComponents)

input_groups_simple <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupAddon("@", addon_type = "prepend"),
        dbcInput(placeholder = "Username")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInput(placeholder = "Recipients username"),
        dbcInputGroupAddon("@example.com", addon_type = "append")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("$", addon_type = "prepend"),
        dbcInput(placeholder = "Amount", type = "number"),
        dbcInputGroupAddon(".00", addon_type = "append")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupAddon("With textarea", addon_type = "prepend"),
        dbcTextarea()
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcSelect(
          options = list(
            list(label =  "Option 1", value = 1),
            list(label =  "Option 2", value = 2)
          )
        ),
        dbcInputGroupAddon("With select", addon_type = "append")
      )
    )
  )
)
