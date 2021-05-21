
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- fluid

jumbotron_fluid <- dbcJumbotron(
  list(
    dbcContainer(
      list(
        htmlH1("Fluid jumbotron", className = "display-3"),
        htmlP(
            "This jumbotron occupies the entire horizontal
            space of its parent.",
            className = "lead",
        ),
        htmlP(
            "You will need to embed a fluid container in
            the jumbotron.",
            className = "lead"
        )
      ),
      fluid = TRUE
    )
  ),
  fluid = TRUE
)

# ----------- simple


jumbotron_simple <- dbcJumbotron(
  list(
    htmlH1("Jumbotron", className = "display-3"),
    htmlP(
        "Use a jumbotron to call attention to
        featured content or information.",
        className = "lead",
    ),
    htmlHr(className = "my-2"),
    htmlP(
        "Jumbotrons use utility classes for typography and
        spacing to suit the larger container."
    ),
    htmlP(dbcButton("Learn more", color = "primary"), className = "lead")
  )
)



app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Jumbotron Simple example"),
      jumbotron_simple,
      htmlHr(),
      htmlH2("Jumbotron - Fluid"),
      jumbotron_fluid
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
