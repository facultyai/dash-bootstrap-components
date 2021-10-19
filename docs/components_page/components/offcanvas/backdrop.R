library(dashBootstrapComponents)
library(dashHtmlComponents)

backdrop_selector <- htmlDiv(
  list(
    dbcLabel("Backdrop:"),
    dbcRadioItems(
      id = "offcanvas-backdrop-selector",
      options = list(
        list("label" = "True (default)", "value" = TRUE),
        list("label" = "False", "value" = FALSE),
        list("label" = "Static (no dismiss)", "value" = "static")
      ),
      inline = TRUE,
      value = TRUE
    )
  ),
  className = "mb-2"
)


offcanvas <- htmlDiv(
  list(
    backdrop_selector,
    dbcButton(
      "Open backdrop offcanvas",
      id = "open-offcanvas-backdrop", n_clicks = 0
    ),
    dbcOffcanvas(
      htmlP("Here is some content..."),
      id = "offcanvas-backdrop",
      title = "Offcanvas with/without backdrop",
      is_open = FALSE
    )
  )
)


app$callback(
  output("offcanvas-backdrop", "backdrop"),
  list(input("offcanvas-backdrop-selector", "value")),
  function(backdrop) {
    return(backdrop)
  }
)


app$callback(
  output("offcanvas-backdrop", "is_open"),
  list(
    input("open-offcanvas-backdrop", "n_clicks"),
    state("offcanvas-backdrop", "is_open")
  ),
  function(n1, is_open) {
    if (n1 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
