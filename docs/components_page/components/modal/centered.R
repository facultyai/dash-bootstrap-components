library(dashBootstrapComponents)
library(dashHtmlComponents)

modal <- htmlDiv(
  list(
    dbcButton("Open", id = "open-centered"),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header"), close_button = TRUE),
        dbcModalBody("This modal is vertically centered"),
        dbcModalFooter(
          dbcButton(
            "Close",
            id = "close-centered", className = "ms-auto", n_clicks = 0
          )
        )
      ),
      id = "modal-centered",
      is_open = FALSE,
      centered = TRUE
    )
  )
)


app$callback(
  output("modal-centered", "is_open"),
  list(
    input("open-centered", "n_clicks"),
    input("close-centered", "n_clicks"),
    state("modal-centered", "is_open")
  ),
  function(n1, n2, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
