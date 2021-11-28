library(dashBootstrapComponents)

input_groups <- div(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupText("@"),
        dbcInput(placeholder = "Username")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInput(placeholder = "Recipient's username"),
        dbcInputGroupText("@example.com")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText("$"),
        dbcInput(placeholder = "Amount", type = "number"),
        dbcInputGroupText(".00")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText("Total:"),
        dbcInputGroupText("$"),
        dbcInput(placeholder = "Amount", type = "number"),
        dbcInputGroupText(".00"),
        dbcInputGroupText("only")
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText("With textarea"),
        dbcTextarea()
      ),
      className = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcSelect(
          options = list(
            list(label = "Option 1", value = 1),
            list(label = "Option 2", value = 2)
          )
        ),
        dbcInputGroupText("With select")
      )
    )
  )
)
