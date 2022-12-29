library(dashBootstrapComponents)

loading_spinner <- div(
  list(
    dbcButton("Load", id = "loading-button", n_clicks = 0),
    dbcSpinner(div(id = "loading-output"))
  )
)


app$callback(
  output("loading-output", "children"),
  list(input("loading-button", "n_clicks")),
  function(n) {
    if (n > 0) {
      Sys.sleep(1)
      return(sprintf("Output loaded %d times", n))
    }
    return(sprintf("Output not reloaded yet"))
  }
)
