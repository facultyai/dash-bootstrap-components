library(dashBootstrapComponents)

cards <- dbcCard(
  dbcCardBody(
    list(
      html$h5("Custom CSS", className = "card-title"),
      p(
        paste(
          "This card has inline styles applied controlling the width.",
          "You could also apply the same styles with a custom CSS class."
        )
      )
    )
  ),
  style = list(width = "18rem")
)
