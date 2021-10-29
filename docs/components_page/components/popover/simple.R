library(dashBootstrapComponents)
library(dashHtmlComponents)

popovers <- htmlDiv(
  list(
    # First example - using dbcPopoverBody
    dbcButton(
      "popover-target",
      id = "popover-target",
      className = "me-1"
    ),
    dbcPopover(
      dbcPopoverBody("My `target` is `popover-target`."),
      target = "popover-target",
      trigger = "click"
    ),
    # Second example - using body=TRUE
    dbcButton(
      "popover-alt-target",
      id = "popover-alt-target",
      className = "me-1"
    ),
    dbcPopover(
      "My `target` is `popover-alt-target`.",
      body = TRUE,
      target = "popover-alt-target",
      trigger = "click"
    )
  )
)
