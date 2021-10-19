library(dashBootstrapComponents)
library(dashHtmlComponents)

offcanvas <- htmlDiv(
  list(
    dbcButton(
      "Open scrollable offcanvas",
      id = "open-offcanvas-scrollable",
      n_clicks = 0,
    ),
    dbcOffcanvas(
      htmlP("The contents on the main page are now scrollable."),
      id = "offcanvas-scrollable",
      scrollable = TRUE,
      title = "Scrollable Offcanvas",
      is_open = FALSE
    )
  )
)


app$callback(
  output("offcanvas-scrollable", "is_open"),
  list(
    input("open-offcanvas-scrollable", "n_clicks"),
    state("offcanvas-scrollable", "is_open")
  ),
  function(n1, is_open) {
    if (n1 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
