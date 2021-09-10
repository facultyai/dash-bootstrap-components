library(dashBootstrapComponents)
library(dashHtmlComponents)

modal <- htmlDiv(
  list(
    dbcButton("Open modal", id = "open", n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header")),
        dbcModalBody("This is the content of the modal"),
        dbcModalFooter(
          dbcButton(
            "Close",
            id = "close", n_clicks = 0, className = "ms-auto"
          )
        )
      ),
      id = "modal",
      is_open = FALSE,
    )
  )
)


app$callback(
  output("modal", "is_open"),
  list(
    input("open", "n_clicks"),
    input("close", "n_clicks"),
    state("modal", "is_open")
  ),
  function(n1, n2, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
