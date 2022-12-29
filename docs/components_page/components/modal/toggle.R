library(dashBootstrapComponents)

modal_1 <- dbcModal(
  list(
    dbcModalHeader(dbcModalTitle("Modal 1")),
    dbcModalBody("This is the content of the first modal"),
    dbcModalFooter(
      dbcButton(
        "Open Modal 2",
        id = "open-toggle-modal-2",
        className = "ms-auto",
        n_clicks = 0
      )
    )
  ),
  id = "toggle-modal-1",
  is_open = FALSE
)

modal_2 <- dbcModal(
  list(
    dbcModalHeader(dbcModalTitle("Modal 2")),
    dbcModalBody("This is the second modal"),
    dbcModalFooter(
      dbcButton(
        "Back to Modal 1",
        id = "open-toggle-modal-1",
        className = "ms-auto",
        n_clicks = 0
      )
    )
  ),
  id = "toggle-modal-2",
  is_open = FALSE
)


modal <- div(
  list(
    dbcButton("Open modal", id = "open-toggle-modal", n_clicks = 0),
    modal_1,
    modal_2
  )
)

app$callback(
  output("toggle-modal-1", "is_open"),
  list(
    input("open-toggle-modal", "n_clicks"),
    input("open-toggle-modal-1", "n_clicks"),
    input("open-toggle-modal-2", "n_clicks"),
    state("toggle-modal-1", "is_open")
  ),
  function(n0, n1, n2, is_open) {
    if (n0 > 0 | n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)

app$callback(
  output("toggle-modal-2", "is_open"),
  list(
    input("open-toggle-modal-2", "n_clicks"),
    input("open-toggle-modal-1", "n_clicks"),
    state("toggle-modal-2", "is_open")
  ),
  function(n2, n1, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
