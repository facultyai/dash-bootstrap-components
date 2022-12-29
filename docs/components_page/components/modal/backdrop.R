library(dashBootstrapComponents)

modal <- div(
  list(
    div(
      list(
        dbcLabel("Backdrop:"),
        dbcRadioItems(
          id = "backdrop-selector",
          options = list(
            list("label" = "True (default)", "value" = TRUE),
            list("label" = "False", "value" = FALSE),
            list("label" = "'static'", "value" = "static")
          ),
          inline = TRUE,
          value = TRUE,
        )
      ),
      className = "mb-2"
    ),
    dbcButton("Open modal", id = "open-backdrop", n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Header"), close_button = TRUE),
        dbcModalBody(
          "Change the backdrop of this modal with the radio buttons"
        ),
        dbcModalFooter(
          dbcButton(
            "Close",
            id = "close-backdrop",
            className = "ms-auto",
            n_clicks = 0
          )
        )
      ),
      id = "modal-backdrop",
      is_open = FALSE
    )
  )
)

app$callback(
  output("modal-backdrop", "backdrop"),
  list(input("backdrop-selector", "value")),
  function(backdrop) {
    return(backdrop)
  }
)


app$callback(
  output("modal-backdrop", "is_open"),
  list(
    input("open-backdrop", "n_clicks"),
    input("close-backdrop", "n_clicks"),
    state("modal-backdrop", "is_open")
  ),
  function(n1, n2, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)
