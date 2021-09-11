library(dashBootstrapComponents)
library(dashHtmlComponents)

modal <- htmlDiv(
  list(
    dbcButton("Open modal", id = "open-fs"),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Fullscreen modal")),
        dbcModalBody("Wow this thing takes up a lot of space...")
      ),
      id = "modal-fs",
      fullscreen = TRUE
    )
  )
)


app$callback(
  output("modal-fs", "is_open"),
  list(
    input("open-fs", "n_clicks"),
    state("modal-fs", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
