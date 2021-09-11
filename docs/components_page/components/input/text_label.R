library(dashBootstrapComponents)
library(dashHtmlComponents)

text_input <- htmlDiv(
  list(
    dbcLabel("Text"),
    dbcInput(placeholder = "Input goes here...", type = "text"),
    dbcFormText("Type something in the box above")
  )
)
