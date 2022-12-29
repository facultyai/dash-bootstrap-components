library(dashBootstrapComponents)

list_group <- dbcListGroup(
  list(
    dbcListGroupItem(
      list(
        div(
          list(
            html$h5("This item has a heading", className = "mb-1"),
            html$small("Yay!", className = "text-success")
          ),
          className = "d-flex w-100 justify-content-between"
        ),
        p("And some text underneath", className = "mb-1"),
        html$small("Plus some small print.", className = "text-muted")
      )
    ),
    dbcListGroupItem(
      list(
        div(
          list(
            html$h5(
              "This item also has a heading",
              className = "mb-1"
            ),
            html$small("Ok!", className = "text-warning")
          ),
          className = "d-flex w-100 justify-content-between"
        ),
        p("And some more text underneath too", className = "mb-1"),
        html$small(
          "Plus even more small print.",
          className = "text-muted"
        )
      )
    )
  )
)
