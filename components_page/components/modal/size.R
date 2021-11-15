library(dashBootstrapComponents)

modal <- div(
  list(
    dbcButton("Small modal", id = "open-sm", n_clicks = 0, className = "me-1"),
    dbcButton("Large modal", id = "open-lg", n_clicks = 0, className = "me-1"),
    dbcButton("Extra large modal", n_clicks = 0, id = "open-xl"),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header")),
        dbcModalBody("A small modal.")
      ),
      id = "modal-sm",
      is_open = FALSE,
      size = "sm"
    ),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header")),
        dbcModalBody("A large modal.")
      ),
      id = "modal-lg",
      is_open = FALSE,
      size = "lg"
    ),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header")),
        dbcModalBody("An extra large modal.")
      ),
      id = "modal-xl",
      is_open = FALSE,
      size = "xl"
    )
  )
)


toggle_modal <- function(n1, is_open) {
  if (n1 > 0) {
    return(!is_open)
  }
  return(is_open)
}

app$callback(
  output("modal-sm", "is_open"),
  list(
    input("open-sm", "n_clicks"),
    state("modal-sm", "is_open")
  ),
  toggle_modal
)

app$callback(
  output("modal-lg", "is_open"),
  list(
    input("open-lg", "n_clicks"),
    state("modal-lg", "is_open")
  ),
  toggle_modal
)

app$callback(
  output("modal-xl", "is_open"),
  list(
    input("open-xl", "n_clicks"),
    state("modal-xl", "is_open")
  ),
  toggle_modal
)
