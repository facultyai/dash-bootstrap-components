library(dashBootstrapComponents)


collapse <- div(
  list(
    dbcButton(
      "Open collapse",
      id = "collapse-button",
      className = "mb-3",
      color = "primary",
      n_clicks = 0
    ),
    dbcCollapse(
      dbcCard(dbcCardBody("This content is hidden in the collapse")),
      id = "collapse",
      is_open = FALSE
    )
  )
)


app$callback(
  output("collapse", "is_open"),
  list(
    input("collapse-button", "n_clicks"),
    state("collapse", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
