library(dashBootstrapComponents)
library(dashHtmlComponents)

backdrop_selector <- htmlDiv(
  list(
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
  class_name = "p-3 m-2 border",
)

offcanvas <- htmlDiv(
  list(
    dbcButton(
      "Open backdrop offcanvas",
      id = "open-offcanvas-backdrop", n_clicks = 0
    ),
    dbcOffcanvas(
      list(
        htmlDiv(
          paste(
            "Change the backdrop of this offcanvas with the",
            "radio buttons"
          )
        ),
        backdrop_selector,
        dbcButton(
          "Close",
          id = "close-offcanvas-backdrop",
          class_name = "ms-auto",
          n_clicks = 0,
        )
      ),
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
    input("close-offcanvas-backdrop", "n_clicks"),
    state("offcanvas-backdrop", "is_open")
  ),
  function(n1, n2, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
