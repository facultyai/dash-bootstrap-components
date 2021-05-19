
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- button

spinners_button <- htmlDiv(
  list(
    dbcButton(
        dbcSpinner(size = "sm"),
        color = "primary",
        disabled = TRUE,
        className = "mr-1"
    ),
    dbcButton(
      list(dbcSpinner(size = "sm"), " Loading..."),
      color = "primary",
      disabled = TRUE
    )
  )
)


# ------------- grow

spinners_grow <- htmlDiv(
  list(
    dbcSpinner(color = "primary", type = "grow"),
    dbcSpinner(color = "secondary", type = "grow"),
    dbcSpinner(color = "success", type = "grow"),
    dbcSpinner(color = "warning", type = "grow"),
    dbcSpinner(color = "danger", type = "grow"),
    dbcSpinner(color = "info", type = "grow"),
    dbcSpinner(color = "light", type = "grow"),
    dbcSpinner(color = "dark", type = "grow")
  )
)

# -------------- loading

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
# ------------- simple

spinners_simple <- htmlDiv(
  list(
    dbcSpinner(color = "primary"),
    dbcSpinner(color = "secondary"),
    dbcSpinner(color = "success"),
    dbcSpinner(color = "warning"),
    dbcSpinner(color = "danger"),
    dbcSpinner(color = "info"),
    dbcSpinner(color = "light"),
    dbcSpinner(color = "dark")
  )
)

# ------------- size


spinners_size <- htmlDiv(
  list(
    dbcSpinner(size = "sm"),
    htmlHr(),
    dbcSpinner(spinner_style = list(width = "3rem", height = "3rem"))
  )
)

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Spinners - Basic usage"),
      spinners_simple,
      htmlHr(),
      htmlH2("Spinners - loading"),
      spinner_loading,
      htmlHr(),
      htmlH2("Spinners - Growing"),
      spinners_grow,
      htmlHr(),
      htmlH2("Spinners - Size"),
      spinners_size,
      htmlHr(),
      htmlH2("Spinners - Buttons"),
      spinners_button
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
