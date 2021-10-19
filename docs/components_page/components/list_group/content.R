library(dashBootstrapComponents)

list_group <- dbcListGroup(
  list(
    dbcListGroupItem(
      list(
        htmlDiv(
          list(
            htmlH5("This item has a heading", className = "mb-1"),
            htmlSmall("Yay!", className = "text-success")
          ),
          className = "d-flex w-100 justify-content-between"
        ),
        htmlP("And some text underneath", className = "mb-1"),
        htmlSmall("Plus some small print.", className = "text-muted")
      )
    ),
    dbcListGroupItem(
      list(
        htmlDiv(
          list(
            htmlH5(
              "This item also has a heading",
              className = "mb-1"
            ),
            htmlSmall("Ok!", className = "text-warning")
          ),
          className = "d-flex w-100 justify-content-between"
        ),
        htmlP("And some more text underneath too", className = "mb-1"),
        htmlSmall(
          "Plus even more small print.",
          className = "text-muted"
        )
      )
    )
  )
)
