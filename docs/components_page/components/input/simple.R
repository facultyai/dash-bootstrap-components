library(dashBootstrapComponents)
library(dashHtmlComponents)

text_input <- htmlDiv(
  list(
    dbcInput(id = "input", placeholder = "Type something...", type = "text"),
    htmlBr(),
    htmlP(id = "output")
  )
)


app$callback(
  output("output", "children"),
  list(input("input", "value")),
  function(value) {
    return(value)
  }
)
