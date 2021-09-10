library(dashBootstrapComponents)
library(dashHtmlComponents)

jumbotron <- htmlDiv(
  dbcContainer(
    list(
      htmlH1("Jumbotron", className = "display-3"),
      htmlP(
        paste(
          "Use Containers to create a jumbotron to call attention to",
          "featured content or information."
        ),
        className = "lead"
      ),
      htmlHr(className = "my-2"),
      htmlP(
        paste(
          "Use utility classes for typography and spacing to suit the",
          "larger container."
        )
      ),
      htmlP(
        dbcButton("Learn more", color = "primary"),
        className = "lead"
      )
    ),
    fluid = TRUE,
    className = "py-3"
  ),
  className = "p-3 bg-light rounded-3"
)
