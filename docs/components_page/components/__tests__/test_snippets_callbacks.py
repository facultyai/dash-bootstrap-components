"""
Automated testing of non-Python code snippets callbacks in the docs
"""
import dash.testing.wait as wait

rapp = """
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

alerts_dismiss <- htmlDiv(
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
    state("alert-no-fade",  "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)

app$layout(alerts_dismiss)
app$run_server()
"""


def test_alert_callback(dashr):
    dashr.start_server(rapp)

    assert dashr.find_element("#alert-fade") != []
    dashr.find_element("#alert-toggle-fade").click()
    wait.until(
        lambda: dashr.find_elements("#alert-fade") == [],
        timeout=1,
    )

    assert dashr.find_element("#alert-no-fade") != []
    dashr.find_element("#alert-toggle-no-fade").click()
    wait.until(
        lambda: dashr.find_elements("#alert-no-fade") == [],
        timeout=1,
    )
