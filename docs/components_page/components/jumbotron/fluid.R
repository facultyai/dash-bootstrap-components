library(dashBootstrapComponents)
library(dashHtmlComponents)

jumbotron <- dbcJumbotron(
  list(
    dbcContainer(
      list(
        htmlH1("Fluid jumbotron", className = "display-3"),
        htmlP(
            paste(
              "This jumbotron occupies the entire horizontal",
              "space of its parent."
            ),
            className = "lead",
        ),
        htmlP(
            paste(
              "You will need to embed a fluid container in",
              "the jumbotron."
            ),
            className = "lead"
        )
      ),
      fluid = TRUE
    )
  ),
  fluid = TRUE
)
