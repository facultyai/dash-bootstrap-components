library(dashBootstrapComponents)

placement_selector <- div(
  list(
    dbcLabel("Placement:"),
    dbcRadioItems(
      id = "offcanvas-placement-selector",
      options = list(
        list("label" = "start (Default)", "value" = "start"),
        list("label" = "end", "value" = "end"),
        list("label" = "top", "value" = "top"),
        list("label" = "bottom", "value" = "bottom")
      ),
      value = "start",
      inline = TRUE
    )
  ),
  className = "mb-2"
)

offcanvas <- div(
  list(
    placement_selector,
    dbcButton("Open Offcanvas", id = "open-offcanvas-placement", n_clicks = 0),
    dbcOffcanvas(
      p("Some offcanvas content..."),
      id = "offcanvas-placement",
      title = "Placement",
      is_open = FALSE
    )
  )
)


app$callback(
  output("offcanvas-placement", "is_open"),
  list(
    input("open-offcanvas-placement", "n_clicks"),
    state("offcanvas-placement", "is_open")
  ),
  function(n1, is_open) {
    if (n1 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)


app$callback(
  output("offcanvas-placement", "placement"),
  list(
    input("offcanvas-placement-selector", "value")
  ),
  function(placement) {
    return(placement)
  }
)
