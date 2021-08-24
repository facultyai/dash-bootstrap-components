library(dashBootstrapComponents)
library(dashHtmlComponents)

modal <- htmlDiv(
  list(
    dbcButton("Open modal", id = "open-dismiss"),
    dbcModal(
      list(
        dbcModalHeader(
          dbcModalTitle("Dismissing"),
          close_button = FALSE
        ),
        dbcModalBody(
          paste(
            "This modal has no close button and can't be dismissed by",
            "pressing ESC. Try clicking on the backdrop or the below",
            "close button."
          )
        ),
        dbcModalFooter(dbcButton("Close", id = "close-dismiss"))
      ),
      id = "modal-dismiss",
      keyboard = FALSE,
      backdrop = "static"
    )
  )
)


app$callback(
  output("modal-dismiss", "is_open"),
  list(
    input("open-dismiss", "n_clicks"),
    input("close-dismiss", "n_clicks"),
    state("modal-dismiss", "is_open")
  ),
  function(n_open, n_close, is_open) {
    if (n_open > 0 | n_close > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
