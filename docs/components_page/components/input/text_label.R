library(dashBootstrapComponents)

input_text <- dbcFormGroup(
  list(
    dbcLabel("Text"),
    dbcInput(placeholder = "Input goes here...", type = "text"),
    dbcFormText("Type something in the box above")
  )
)
