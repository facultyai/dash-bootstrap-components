library(dashBootstrapComponents)

text_input <- div(
  list(
    dbcLabel("Text"),
    dbcInput(placeholder = "Input goes here...", type = "text"),
    dbcFormText("Type something in the box above")
  )
)
