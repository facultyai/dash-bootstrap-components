library(dashBootstrapComponents)

fade <- div(
  list(
    dbcButton("Toggle fade",
      id = "fade-button", n_clicks = 0,
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
      id = "fade",
      is_in = FALSE,
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
    return(FALSE)
  }
)
