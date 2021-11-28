library(dashBootstrapComponents)

toast <- div(
  list(
    dbcButton(
      "Open toast",
      id = "auto-toast-toggle",
      color = "primary",
      n_clicks = 0,
      className = "mb-3",
    ),
    dbcToast(
      list(p("This is the content of the toast", className = "mb-0")),
      id = "auto-toast",
      header = "This is the header",
      icon = "primary",
      duration = 4000,
      is_open = FALSE
    )
  )
)


app$callback(
  output("auto-toast", "is_open"),
  list(input("auto-toast-toggle", "n_clicks")),
  function(n) {
    if (n > 0) {
      return(TRUE)
    }
    return(dashNoUpdate())
  }
)
