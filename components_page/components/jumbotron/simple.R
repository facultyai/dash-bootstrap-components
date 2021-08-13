library(dashBootstrapComponents)
library(dashHtmlComponents)

simple_jumbotron <- dbcJumbotron(
  list(
    htmlH1("Jumbotron", class_name = "display-3"),
    htmlP(
        paste(
          "Use a jumbotron to call attention to",
          "featured content or information."
        ),
        class_name = "lead",
    ),
    htmlHr(class_name = "my-2"),
    htmlP(
        paste(
          "Jumbotrons use utility classes for typography and",
          "spacing to suit the larger container."
        )
    ),
    htmlP(dbcButton("Learn more", color = "primary"), class_name = "lead")
  )
)
