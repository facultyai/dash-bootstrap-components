

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


buttons_simple <- htmlDiv(
  list(
    dbcButton("Primary", color = "primary", className = "mr-1"),
    dbcButton("Secondary", color = "secondary", className = "mr-1"),
    dbcButton("Success", color = "success", className = "mr-1"),
    dbcButton("Warning", color = "warning", className = "mr-1"),
    dbcButton("Danger", color = "danger", className = "mr-1"),
    dbcButton("Info", color = "info", className = "mr-1"),
    dbcButton("Light", color = "light", className = "mr-1"),
    dbcButton("Dark", color = "dark", className = "mr-1"),
    dbcButton("Link", color = "link")
  )
)

button_usage <-  htmlDiv(
  list(
    dbcButton("Click me", id = "example-button", n_clicks = 0,
              className = "mr-2"),
    htmlSpan(id = "example-output", style = list(verticalAlign = "middle"))
  )
)

buttons_outline <- htmlDiv(
  list(
    dbcButton("Primary", outline = TRUE, color = "primary", className = "mr-1"),
    dbcButton(
        "Secondary", outline = TRUE, color = "secondary", className = "mr-1"
    ),
    dbcButton("Success", outline = TRUE, color = "success", className = "mr-1"),
    dbcButton("Warning", outline = TRUE, color = "warning", className = "mr-1"),
    dbcButton("Danger", outline = TRUE, color = "danger", className = "mr-1"),
    dbcButton("Info", outline = TRUE, color = "info", className = "mr-1"),
    dbcButton("Light", outline = TRUE, color = "light", className = "mr-1"),
    dbcButton("Dark", outline = TRUE, color = "dark")
  )
)

buttons_size <- htmlDiv(
  list(
    dbcButton("Large button", size = "lg", className = "mr-1"),
    dbcButton("Regular button", className = "mr-1"),
    dbcButton("Small button", size = "sm")
  )
)

button_block <- dbcButton("Block button", color = "primary", block = TRUE)

buttons_active_disabled <- htmlDiv(
  list(
    dbcButton("Regular", color = "primary", className = "mr-1"),
    dbcButton("Active", color = "primary", active = TRUE, className = "mr-1"),
    dbcButton("Disabled", color = "primary", disabled = TRUE)
  )
)


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Button Simple example"),
      buttons_simple,
      htmlHr(),
      htmlH2("Using buttons"),
      button_usage,
      htmlHr(),
      htmlH2("Outline buttons"),
      buttons_outline,
      htmlHr(),
      htmlH2("Button Size"),
      buttons_size,
      htmlHr(),
      htmlH2("Block buttoon"),
      button_block,
      htmlHr(),
      htmlH2("Active and disabled states"),
      buttons_active_disabled


    ),
    className = "p-5")
)


app$callback(
    output("example-output", "children"),
    list(input("example-button", "n_clicks")),
    function(n) {
      if (n > 0) {
        return(sprintf("Clicked %d times.", n))
      }
      return(sprintf("Not clicked"))
    }
)

app$run_server(showcase = TRUE)
