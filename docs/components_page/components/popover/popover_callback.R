library(dashBootstrapComponents)
library(dashHtmlComponents)

popover <- htmlDiv(
  list(
    dbcButton("Toggle",
      id = "toggle", n_clicks = 0,
      color = "success", className = "me-4"
    ),
    dbcButton("Target", id = "target", n_clicks = 0, color = "danger"),
    dbcPopover(
      list(
        dbcPopoverHeader("Popover header"),
        dbcPopoverBody("And here's some amazing content. Cool!")
      ),
      id = "popover",
      is_open = FALSE,
      target = "target"
    )
  )
)


app$callback(
  output("popover", "is_open"),
  list(
    input("toggle", "n_clicks"),
    state("popover", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
