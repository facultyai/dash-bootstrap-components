library(dashBootstrapComponents)
library(dashHtmlComponents)

fade <- htmlDiv(
  list(
    dbcButton("Toggle fade",
      id = "fade-button", n_clicks = 0,
      className = "mb-3"
    ),
    dbcFade(
      dbcCard(
        dbcCardBody(
          htmlP(
            "This content fades in and out",
            className = "card-text"
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
