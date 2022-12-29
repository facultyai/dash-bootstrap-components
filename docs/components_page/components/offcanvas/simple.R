library(dashBootstrapComponents)

offcanvas <- div(
  list(
    dbcButton("Open Offcanvas", id = "open-offcanvas", n_clicks = 0),
    dbcOffcanvas(
      p(
        paste(
          "This is the content of the Offcanvas.",
          "Close it by clicking on the close button, or",
          "the backdrop."
        )
      ),
      id = "offcanvas",
      title = "Title",
      is_open = FALSE
    )
  )
)


app$callback(
  output("offcanvas", "is_open"),
  list(
    input("open-offcanvas", "n_clicks"),
    state("offcanvas", "is_open")
  ),
  function(n1, is_open) {
    if (n1 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
