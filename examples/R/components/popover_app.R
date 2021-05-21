

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


#-------------- direction

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


popovers_direction <- htmlDiv(
  list(
    make_button("top"), make_button("left"),
    make_button("right"), make_button("bottom"),
    make_popover("top"), make_popover("left"),
    make_popover("right"), make_popover("bottom")
  )
)


toggle_popover <-  function(n, is_open) {
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

# -------------- popover


popover_children <- list(
    dbcPopoverHeader("Popover header"),
    dbcPopoverBody("And here's some amazing content. Cool!")
)

popovers <- htmlDiv(
  list(
    dbcButton(
      "Click", id = "click-target", n_clicks = 0,
      color = "danger", className = "mr-1"
    ),
    dbcPopover(
      popover_children,
      id = "click",
      target = "click-target",
      trigger = "click"
    ),
    dbcButton(
      "Focus", id = "focus-target", n_clicks = 0,
      color = "danger", className = "mr-1"
    ),
    dbcPopover(
      popover_children,
      id = "focus",
      target = "focus-target",
      trigger = "focus"
    ),
    dbcButton(
      "Hover", id = "hover-target", n_clicks = 0,
      color = "danger", className = "mr-1"
    ),
    dbcPopover(
      popover_children,
      id = "hover",
      target = "hover-target",
      trigger = "hover",
    ),
    dbcButton("Legacy", id = "legacy-target", n_clicks = 0,
              color = "danger"),
    dbcPopover(
        popover_children,
        id = "legacy",
        target = "legacy-target",
        trigger = "legacy"
    )
  )
)


# -------------- popover_callback

popover_callback <- htmlDiv(
  list(
    dbcButton("Toggle", id = "toggle", n_clicks = 0,
              color = "success", className = "mr-4"),
    dbcButton("Target", id = "target", n_clicks = 0, color = "danger"),
    dbcPopover(
      list(
        dbcPopoverHeader("Popover header"),
        dbcPopoverBody("And here's some amazing content. Cool!")
      ),
      id = "popover",
      is_open = FALSE,
      target = "target"
    )
  )
)


app$callback(
  output("popover", "is_open"),
  list(
    input("toggle", "n_clicks"),
    state("popover", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)

# --------------

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Popover Simple example"),
      popovers,
      htmlHr(),
      htmlH2("Popovers with callback"),
      popover_callback,
      htmlHr(),
      htmlH2("Popovers placement"),
      popovers_direction
    ),
  className = "p-5")
)

app$run_server(debug = TRUE)
