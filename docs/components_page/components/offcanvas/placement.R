library(dashBootstrapComponents)
library(dashHtmlComponents)

placement_selector <- dbcRadioItems(
  id = "offcanvas-placement-selector",
  options = list(
    list("label" = "start (Default)", "value" = "start"),
    list("label" = "end", "value" = "end"),
    list("label" = "top", "value" = "top"),
    list("label" = "bottom", "value" = "bottom")
  ),
  value = "start"
)

offcanvas <- htmlDiv(
  list(
    dbcButton(
      "Open Offcanvas",
      id = "open-offcanvas-placement",
      n_clicks = 0,
      class_name = "m-2"
    ),
    dbcOffcanvas(
      list(
        htmlP(
          paste(
            "Change the placement of this offcanvas with the",
            "options below"
          ),
          class_name = "mb-3"
        ),
        placement_selector
      ),
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
