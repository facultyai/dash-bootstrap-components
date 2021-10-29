library(dashBootstrapComponents)
library(dashHtmlComponents)

popovers <- htmlDiv(
  list(
    dbcButton(
      "Click Me",
      id = "component-target", n_clicks = 0
    ),
    dbcPopover(
      list(
        dbcPopoverHeader("Popover header"),
        dbcPopoverBody("And here's some amazing content. Cool!")
      ),
      target = "component-target",
      trigger = "click"
    )
  )
)
