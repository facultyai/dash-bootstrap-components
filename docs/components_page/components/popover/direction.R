library(dashBootstrapComponents)

make_popover <- function(placement) {
  return(
    dbcPopover(
      list(
        dbcPopoverHeader("Header"),
        dbcPopoverBody(sprintf("This is a %s popover", placement))
      ),
      id = sprintf("popover-%s", placement),
      target = sprintf("popover-%s-target", placement),
      placement = placement,
      is_open = FALSE
    )
  )
}


make_button <- function(placement) {
  return(
    dbcButton(
      sprintf("Popover on %s", placement),
      id = sprintf("popover-%s-target", placement),
      className = "mx-2",
      n_clicks = 0
    )
  )
}


popovers <- div(
  list(
    make_button("top"), make_button("left"),
    make_button("right"), make_button("bottom"),
    make_popover("top"), make_popover("left"),
    make_popover("right"), make_popover("bottom")
  )
)


toggle_popover <- function(n, is_open) {
  if (n > 0) {
    return(!is_open)
  }
  return(is_open)
}

position <- list("top", "left", "right", "bottom")
for (p in position) {
  app$callback(
    output(sprintf("popover-%s", p), "is_open"),
    list(
      input(sprintf("popover-%s-target", p), "n_clicks"),
      state(sprintf("popover-%s", p), "is_open")
    ),
    toggle_popover
  )
}
