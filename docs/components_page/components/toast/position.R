library(dashBootstrapComponents)

toast <- div(
  list(
    dbcButton(
      "Open toast",
      id = "positioned-toast-toggle",
      n_clicks = 0, color = "primary"
    ),
    dbcToast(
      "This toast is placed in the top right",
      id = "positioned-toast",
      header = "Positioned toast",
      is_open = FALSE,
      dismissable = TRUE,
      icon = "danger",
      # top: 66 positions the toast below the navbar
      style = list(position = "fixed", top = 66, right = 10, width = 350),
    )
  )
)


app$callback(
  output("positioned-toast", "is_open"),
  list(input("positioned-toast-toggle", "n_clicks")),
  function(n) {
    if (n > 0) {
      return(TRUE)
    }
  }
)
