
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- auto_dismiss


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

#-------------- icon_dismiss


toast_icon_dismiss <- htmlDiv(
  list(
    dbcButton(
      "Open toast",
      id = "simple-toast-toggle",
      color = "primary",
      n_clicks = 0,
      className = "mb-3",
    ),
    dbcToast(
      list(htmlP("This is the content of the toast", className = "mb-0")),
      id = "simple-toast",
      header = "This is the header",
      icon = "primary",
      dismissable = TRUE
    )
  )
)


app$callback(
  output("simple-toast", "is_open"),
  list(input("simple-toast-toggle", "n_clicks")),
  function(n) {
    if (n > 0) {
      return(TRUE)
    }
  }
)

#-------------- position

toast_position <- htmlDiv(
  list(
    dbcButton(
        "Open toast", id = "positioned-toast-toggle",
        n_clicks = 0, color = "primary"
    ),
    dbcToast(
        "This toast is placed in the top right",
        id = "positioned-toast",
        header = "Positioned toast",
        #is_open = FALSE,
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
# ----------- simple

toast_simple <- dbcToast(
  list(
    htmlP("This is the content of the toast", className = "mb-0")
  ),
  header = "This is the header",
)
#--------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Toast Simple example"),
      toast_simple,
      htmlHr(),
      htmlH2("Toast - Icons and dismissing"),
      toast_icon_dismiss,
      htmlHr(),
      htmlH2("Toast - automatic dismissing"),
      toast_auto_dismiss,
      htmlHr(),
      htmlH2("Toast - Positioning"),
      toast_position
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
