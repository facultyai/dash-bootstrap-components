library(dashBootstrapComponents)

LOREM <- paste(
  readLines(
    "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/components_page/components/modal/lorem.txt",
  ),
  collapse = "\n"
)

modal <- div(
  list(
    dbcButton(
      "Scrolling modal",
      id = "open-scroll", n_clicks = 0, className = "me-1"
    ),
    dbcButton("Modal with scrollable body",
      id = "open-body-scroll",
      n_clicks = 0
    ),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Scrolling modal")),
        dbcModalBody(LOREM),
        dbcModalFooter(
          dbcButton("Close",
            id = "close-scroll", n_clicks = 0,
            className = "ms-auto"
          )
        )
      ),
      id = "modal-scroll",
      is_open = FALSE,
    ),
    dbcModal(
      list(
        dbcModalHeader(dbcModalTitle("Modal with scrollable body")),
        dbcModalBody(LOREM),
        dbcModalFooter(
          dbcButton(
            "Close",
            id = "close-body-scroll", n_clicks = 0,
            className = "ms-auto"
          )
        )
      ),
      id = "modal-body-scroll",
      is_open = FALSE,
      scrollable = TRUE
    )
  )
)


toggle_modal <- function(n1, n2, is_open) {
  if (n1 | n2) {
    return(!is_open)
  }
  return(is_open)
}


app$callback(
  output("modal-scroll", "is_open"),
  list(
    input("open-scroll", "n_clicks"),
    input("close-scroll", "n_clicks"),
    state("modal-scroll", "is_open")
  ), toggle_modal
)

app$callback(
  output("modal-body-scroll", "is_open"),
  list(
    input("open-body-scroll", "n_clicks"),
    input("close-body-scroll", "n_clicks"),
    state("modal-body-scroll", "is_open")
  ), toggle_modal
)
