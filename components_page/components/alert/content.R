library(dashBootstrapComponents)

alert <- dbcAlert(
  list(
    h4("Well done!", className = "alert-heading"),
    p(
      paste(
        "This is a success alert with loads of extra text in it. So much",
        "that you can see how spacing within an alert works with this",
        "kind of content."
      )
    ),
    html$hr(),
    p(
      "Let's put some more text down here, but remove the bottom margin",
      className = "mb-0"
    )
  )
)
