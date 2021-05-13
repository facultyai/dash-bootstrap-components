
library(dashBootstrapComponents)
library(dashHtmlComponents)


alert <- dbcAlert(
  list(
    htmlH4("Well done!", className = "alert-heading"),
    htmlP(
      "This is a success alert with loads of extra text in it. So much
      that you can see how spacing within an alert works with this
      kind of content."
    ),
    htmlHr(),
    htmlP(
      "Let's put some more text down here, but remove the bottom margin",
      className = "mb-0",
    )
  )
)