library(dashBootstrapComponents)
library(dashHtmlComponents)

modal_centered <- htmlDiv(
  list(
    dbcButton("Open", id = "open-centered", n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody("This modal is vertically centered"),
        dbcModalFooter(
          dbcButton(
            "Close", id = "close-centered", n_clicks = 0, className = "ml-auto"
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
