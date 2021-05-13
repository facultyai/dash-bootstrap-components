
library(dashBootstrapComponents)
library(dashHtmlComponents)

alert <- htmlDiv(
  list(
    dbcButton(
      "Toggle alert with fade", id = "alert-toggle-fade", n_clicks = 0,
      className = "mr-1"
    ),
    dbcButton("Toggle alert without fade", id = "alert-toggle-no-fade",
              n_clicks = 0),
    htmlHr(),
    dbcAlert(
      "Hello! I am an alert",
      id = "alert-fade",
      dismissable = TRUE,
      is_open = TRUE,
    ),
    dbcAlert(
      "Hello! I am an alert that doesn't fade in or out",
      id = "alert-no-fade",
      dismissable = TRUE,
      fade = FALSE,
      is_open = TRUE,
    )
  )
)


app$callback(
  output(id = "alert-fade", property = "is_open"),
  list(
    input(id = "alert-toggle-fade", property = "n_clicks"),
    state(id = "alert-fade", property = "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)


app$callback(
  output(id = "alert-no-fade", property = "is_open"),
  list(
    input(id = "alert-toggle-no-fade", property = "n_clicks"),
    state(id = "alert-no-fade", property = "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)