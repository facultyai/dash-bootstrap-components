
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


fade <- htmlDiv(
  list(
    dbcButton("Toggle fade", id = "fade-button", n_clicks = 0,
              className = "mb-3"),
    dbcFade(
      dbcCard(
        dbcCardBody(
            htmlP(
              "This content fades in and out", className = "card-text"
            )
        )
      ),
      id = "fade",
      is_in = TRUE,
      appear = FALSE,
    )
  )
)


app$callback(
  output("fade", "is_in"),
  list(
    input("fade-button", "n_clicks"),
    state("fade", "is_in")
  ),
  function(n, is_in) {
    if (n > 0) {
      return(!is_in)
    }
    return(TRUE)
  }
)

#--------------


fade_transition <- htmlDiv(
  list(
    dbcButton("Toggle fade", id = "fade-transition-button", n_clicks = 0,
              className = "mb-3"),
    dbcFade(
      dbcCard(
        dbcCardBody(
            htmlP(
              "This content fades in and out", className = "card-text"
            )
        )
      ),
      id = "fade-transition",
      is_in = TRUE,
      style = list(transition = "opacity 2000ms ease")
    )
  )
)


app$callback(
  output("fade-transition", "is_in"),
  list(
    input("fade-transition-button", "n_clicks"),
    state("fade-transition", "is_in")
  ),
  function(n, is_in) {
    if (n > 0) {
      return(!is_in)
    }
    return(TRUE)
  }
)

#--------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Fade Simple example"),
      fade,
      htmlHr(),
      htmlH2("Fade - Modifying the transition"),
      fade_transition
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
