library(dashBootstrapComponents)
library(dashHtmlComponents)

toast_auto_dismiss <- htmlDiv(
  list(
    dbcButton(
      "Open toast",
      id = "auto-toast-toggle",
      color = "primary",
      n_clicks = 0,
      className = "mb-3",
    ),
    dbcToast(
      list(htmlP("This is the content of the toast", className = "mb-0")),
      id = "auto-toast",
      header = "This is the header",
      icon = "primary",
      duration = 4000,
    )
  )
)


app$callback(
  output("auto-toast", "is_open"),
  list(input("auto-toast-toggle", "n_clicks")),
  function(n) {
    return(TRUE)
  }
)
