library(dashBootstrapComponents)

jumbotron <- div(
  dbcContainer(
    list(
      h1("Jumbotron", className = "display-3"),
      p(
        paste(
          "Use Containers to create a jumbotron to call attention to",
          "featured content or information."
        ),
        className = "lead"
      ),
      html$hr(className = "my-2"),
      p(
        paste(
          "Use utility classes for typography and spacing to suit the",
          "larger container."
        )
      ),
      p(
        dbcButton("Learn more", color = "primary"),
        className = "lead"
      )
    ),
    fluid = TRUE,
    className = "py-3"
  ),
  className = "p-3 bg-light rounded-3"
)
