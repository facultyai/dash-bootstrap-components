library(dashBootstrapComponents)

fade <- div(
  list(
    dbcButton("Toggle fade",
      id = "fade-transition-button", n_clicks = 0,
      className = "mb-3"
    ),
    dbcFade(
      dbcCard(
        dbcCardBody(
          p(
            "This content fades in and out",
            className = "card-text"
          )
        )
      ),
      id = "fade-transition",
      is_in = TRUE,
      style = list(transition = "opacity 2000ms ease"),
      timeout = 2000
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
