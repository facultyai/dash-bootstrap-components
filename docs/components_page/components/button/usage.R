library(dashBootstrapComponents)

button <- div(
  list(
    dbcButton("Click me",
      id = "example-button", n_clicks = 0,
      className = "me-2"
    ),
    span(id = "example-output", style = list(verticalAlign = "middle"))
  )
)


app$callback(
  output("example-output", "children"),
  list(input("example-button", "n_clicks")),
  function(n) {
    if (n > 0) {
      return(sprintf("Clicked %d times.", n))
    }
    return(sprintf("Not clicked"))
  }
)
