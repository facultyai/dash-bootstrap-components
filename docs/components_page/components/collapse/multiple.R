library(dashBootstrapComponents)
library(dashHtmlComponents)

collapses <- htmlDiv(
  list(
    dbcButton("Toggle left",
      color = "primary", id = "left",
      className = "me-1", n_clicks = 0
    ),
    dbcButton("Toggle right",
      color = "primary", id = "right",
      className = "me-1", n_clicks = 0
    ),
    dbcButton("Toggle both", color = "primary", id = "both", n_clicks = 0),
    dbcRow(
      list(
        dbcCol(
          dbcCollapse(
            dbcCard("This is the left card!", body = TRUE),
            id = "left-collapse",
            is_open = TRUE
          )
        ),
        dbcCol(
          dbcCollapse(
            dbcCard("This is the right card!", body = TRUE),
            id = "right-collapse",
            is_open = TRUE
          )
        )
      ),
      className = "mt-3"
    )
  )
)


app$callback(
  output("left-collapse", "is_open"),
  list(
    input("left", "n_clicks"),
    input("both", "n_clicks"),
    state("left-collapse", "is_open")
  ),
  function(n_left, n_both, is_open) {
    if (n_left || n_both) {
      return(!is_open)
    }
    return(is_open)
  }
)


app$callback(
  output("right-collapse", "is_open"),
  list(
    input("right", "n_clicks"),
    input("both", "n_clicks"),
    state("right-collapse", "is_open")
  ),
  function(n_right, n_both, is_open) {
    if (n_right || n_both) {
      return(!is_open)
    }
    return(is_open)
  }
)
