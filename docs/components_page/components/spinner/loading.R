library(dashBootstrapComponents)
library(dashHtmlComponents)

spinner_loading <- htmlDiv(
  list(
    dbcButton("Load", id = "loading-button", n_clicks = 0),
    dbcSpinner(htmlDiv("", id = "loading-output"))
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
