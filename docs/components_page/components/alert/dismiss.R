library(dashBootstrapComponents)

alert <- div(
  list(
    dbcButton(
      "Toggle alert with fade",
      id = "alert-toggle-fade", n_clicks = 0,
      className = "me-1"
    ),
    dbcButton("Toggle alert without fade",
      id = "alert-toggle-no-fade",
      n_clicks = 0
    ),
    html$hr(),
    dbcAlert(
      "Hello! I am an alert",
      id = "alert-fade",
      dismissable = TRUE,
      is_open = TRUE
    ),
    dbcAlert(
      "Hello! I am an alert that doesn't fade in or out",
      id = "alert-no-fade",
      dismissable = TRUE,
      fade = FALSE,
      is_open = TRUE
    )
  )
)


app$callback(
  output("alert-fade", "is_open"),
  list(
    input("alert-toggle-fade", "n_clicks"),
    state("alert-fade", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)


app$callback(
  output("alert-no-fade", "is_open"),
  list(
    input("alert-toggle-no-fade", "n_clicks"),
    state("alert-no-fade", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
