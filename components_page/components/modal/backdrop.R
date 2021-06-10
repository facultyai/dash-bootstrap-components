library(dashBootstrapComponents)
library(dashHtmlComponents)

modal_backdrop <- htmlDiv(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Backdrop:"),
        dbcRadioItems(
            id = "backdrop-selector",
            options = list(
              list(label = "TRUE (default)", value = TRUE),
              list(label = "FALSE", value = FALSE),
              list(label = "static", value = "static")
            ),
            inline = TRUE,
            value = TRUE,
        )
      )
    ),
    dbcButton("Open modal", id = "open-backdrop", n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody(
          "Change the backdrop of this modal with the radio buttons"
        ),
        dbcModalFooter(
            dbcButton(
              "Close", id = "close-backdrop", n_clicks = 0,
              className = "ml-auto"
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
