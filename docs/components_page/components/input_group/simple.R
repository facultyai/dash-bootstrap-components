library(dashBootstrapComponents)

input_groups <- htmlDiv(
  list(
    dbcInputGroup(
      list(
        dbcInputGroupText("@"),
        dbcInput(placeholder = "Username")
      ),
      class_name = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInput(placeholder = "Recipient's username"),
        dbcInputGroupText("@example.com")
      ),
      class_name = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText("$"),
        dbcInput(placeholder = "Amount", type = "number"),
        dbcInputGroupText(".00")
      ),
      class_name = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcInputGroupText("With textarea"),
        dbcTextarea()
      ),
      class_name = "mb-3"
    ),
    dbcInputGroup(
      list(
        dbcSelect(
          options = list(
            list(label =  "Option 1", value = 1),
            list(label =  "Option 2", value = 2)
          )
        ),
        dbcInputGroupText("With select")
      )
    )
  )
)
