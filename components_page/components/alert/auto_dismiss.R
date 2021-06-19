library(dashBootstrapComponents)
library(dashHtmlComponents)

auto_dismiss_alert <- htmlDiv(
 list(
    dbcButton("Toggle", id = "alert-toggle-auto", className = "mr-1",
              n_clicks = 0),
    htmlHr(),
    dbcAlert(
      "Hello! I am an auto-dismissing alert!",
      id= "alert-auto",
      is_open = TRUE,
      duration = 4000
    )
  )
)


app$callback(
  output("alert-auto",  "is_open"),
  list(
    input("alert-toggle-auto", "n_clicks"),
    state("alert-auto", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
