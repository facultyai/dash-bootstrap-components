library(dashBootstrapComponents)
library(dashHtmlComponents)

jumbotron <- htmlDiv(
  dbcContainer(
    list(
      htmlH1("Jumbotron", class_name = "display-3"),
      htmlP(
        paste(
          "Use Containers to create a jumbotron to call attention to",
          "featured content or information."
        ),
        class_name = "lead"
      ),
      htmlHr(class_name = "my-2"),
      htmlP(
        paste(
          "Use utility classes for typography and spacing to suit the",
          "larger container."
        )
      ),
      htmlP(
        dbcButton("Learn more", color = "primary"),
        class_name = "lead"
      )
    ),
    fluid = TRUE,
    class_name = "py-3"
  ),
  class_name = "p-3 bg-light rounded-3"
)
