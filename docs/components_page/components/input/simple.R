library(dashBootstrapComponents)

text_input <- div(
  list(
    dbcInput(id = "input", placeholder = "Type something...", type = "text"),
    br(),
    p(id = "output")
  )
)


app$callback(
  output("output", "children"),
  list(input("input", "value")),
  function(value) {
    return(value)
  }
)
