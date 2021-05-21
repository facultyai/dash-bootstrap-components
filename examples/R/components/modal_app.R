
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

LOREM <- toString(read.delim(
 "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/components_page/components/modal/lorem.txt",
))

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- backdrop

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


# -------------- centered

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


# --------------- scrollable

modal_scrollable <- htmlDiv(
  list(
    dbcButton(
      "Scrolling modal", id = "open-scroll", n_clicks = 0, className = "mr-1"
    ),
    dbcButton("Modal with scrollable body", id = "open-body-scroll",
              n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody(LOREM),
        dbcModalFooter(
          dbcButton("Close", id = "close-scroll", n_clicks = 0,
                    className = "ml-auto")
        )
      ),
      id = "modal-scroll",
      is_open = FALSE,
    ),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody(LOREM),
        dbcModalFooter(
          dbcButton(
            "Close", id = "close-body-scroll", n_clicks = 0,
            className = "ml-auto"
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

# --------------- simple

modal_simple <- htmlDiv(
  list(
    dbcButton("Open modal", id = "open", n_clicks = 0),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody("This is the content of the modal"),
        dbcModalFooter(
            dbcButton(
              "Close", id = "close", n_clicks = 0, className = "ml-auto"
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


# ----------------- size

modal_size <- htmlDiv(
  list(
    dbcButton("Small modal", id = "open-sm", n_clicks = 0, className = "mr-1"),
    dbcButton("Large modal", id = "open-lg", n_clicks = 0, className = "mr-1"),
    dbcButton("Extra large modal", n_clicks = 0, id = "open-xl"),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody("A small modal."),
        dbcModalFooter(
          dbcButton(
            "Close", id = "close-sm", n_clicks = 0, className = "ml-auto"
          )
        )
      ),
      id = "modal-sm",
      is_open = FALSE,
      size = "sm"
    ),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody("A large modal."),
        dbcModalFooter(
          dbcButton(
            "Close", id = "close-lg", n_clicks = 0, className = "ml-auto"
          )
        )
      ),
      id = "modal-lg",
      is_open = FALSE,
      size = "lg"
    ),
    dbcModal(
      list(
        dbcModalHeader("Header"),
        dbcModalBody("An extra large modal."),
        dbcModalFooter(
          dbcButton(
            "Close", id = "close-xl", n_clicks = 0, className = "ml-auto"
          )
        )
      ),
      id = "modal-xl",
      is_open = FALSE,
      size = "xl"
    )
  )
)


toggle_modal <- function(n1, n2, is_open) {
    if (n1 > 0 | n2 > 0) {
      return(!is_open)
    }
    return(is_open)
}

app$callback(
  output("modal-sm", "is_open"),
  list(
    input("open-sm", "n_clicks"),
    input("close-sm", "n_clicks"),
    state("modal-sm", "is_open")
  ),
  toggle_modal
)

app$callback(
  output("modal-lg", "is_open"),
  list(
    input("open-lg", "n_clicks"),
    input("close-lg", "n_clicks"),
    state("modal-lg", "is_open")
  ),
  toggle_modal
)

app$callback(
  output("modal-xl", "is_open"),
  list(
    input("open-xl", "n_clicks"),
    input("close-xl", "n_clicks"),
    state("modal-xl", "is_open")
  ),
  toggle_modal
)

# ----------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Modal  Simple example"),
      modal_simple,
      htmlHr(),
      htmlH2("Modal  Size"),
      modal_size,
      htmlHr(),
      htmlH2("Modal  Backdrop"),
      modal_backdrop,
      htmlHr(),
      htmlH2("Modal Scrolling"),
      modal_scrollable,
      htmlHr(),
      htmlH2("Modal  Centered"),
      modal_centered
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
