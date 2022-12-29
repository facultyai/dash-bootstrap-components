library(dashBootstrapComponents)

progress <- div(
  list(
    dbcProgress(
      value = 80, id = "animated-progress", striped = TRUE, animated = FALSE
    ),
    dbcButton(
      "Toggle animation",
      id = "animation-toggle", n_clicks = 0,
      className = "mt-3"
    )
  )
)


app$callback(
  output("animated-progress", "animated"),
  list(
    input("animation-toggle", "n_clicks"),
    state("animated-progress", "animated")
  ),
  function(n, animated) {
    if (n > 0) {
      return(!animated)
    }
    return(animated)
  }
)
