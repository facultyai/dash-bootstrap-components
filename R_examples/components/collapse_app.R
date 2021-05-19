
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)


# -----------
make_item <- function(i) {
  # we use this function to make the example items to avoid code duplication
  return(
    dbcCard(
      list(
        dbcCardHeader(
            htmlH2(
                dbcButton(
                    sprintf("Collapsible group # %d", i),
                    color = "link",
                    id = sprintf("group-%d-toggle", i),
                    n_clicks = 0
                )
            )
        ),
        dbcCollapse(
            dbcCardBody(sprintf("This is the content of group %d...", i)),
            id = sprintf("collapse-%d", i),
            is_open = FALSE
        )
      )
    )
  )
}

accordion <- htmlDiv(
  list(
    make_item(1), make_item(2), make_item(3)
  ),
   className = "accordion"
)


app$callback(
  list(
    output("collapse-1", "is_open"),
    output("collapse-2", "is_open"),
    output("collapse-3", "is_open")
  ),
  list(
    input("group-1-toggle", "n_clicks"),
    input("group-2-toggle", "n_clicks"),
    input("group-3-toggle", "n_clicks"),
    state("collapse-1", "is_open"),
    state("collapse-2", "is_open"),
    state("collapse-3", "is_open")
  ),
  function(n1, n2, n3, is_open1, is_open2, is_open3) {
    ctx <- app$callback_context()

    button_id <- if (ctx$triggered$value) {
      unlist(strsplit(ctx$triggered$prop_id, "[.]"))[1]
    } else return(list(FALSE, FALSE, FALSE))

    if (button_id == "group-1-toggle" && n1 > 0) {
        return(list(!is_open1, FALSE, FALSE))
    } else if (button_id == "group-2-toggle" && n2 > 0) {
        return(list(FALSE, !is_open2, FALSE))
    } else if (button_id == "group-3-toggle" && n3 > 0) {
        return(list(FALSE, FALSE, !is_open3))
    }
    return(list(FALSE, FALSE, FALSE))
  }
)

#------------


collapse_simple <- htmlDiv(
  list(
    dbcButton(
      "Open collapse",
      id = "collapse-button",
      className = "mb-3",
      color = "primary",
      n_clicks = 0
    ),
    dbcCollapse(
      dbcCard(dbcCardBody("This content is hidden in the collapse")),
      id = "collapse",
      is_open = FALSE
    )
  )
)


app$callback(
  output("collapse", "is_open"),
  list(
    input("collapse-button", "n_clicks"),
    state("collapse", "is_open")
  ),
  function(n, is_open) {
    if (n > 0) {
      return(!is_open)
    }
    return(is_open)
  }
)


# --------------

collapses_multiple <- htmlDiv(
  list(
    dbcButton("Toggle left", color = "primary", id = "left",
              className = "mr-1", n_clicks = 0
    ),
    dbcButton("Toggle right", color = "primary", id = "right",
              className = "mr-1", n_clicks = 0
    ),
    dbcButton("Toggle both", color = "primary", id = "both",
              className = "mr-1", n_clicks = 0
    ),
    dbcRow(
      list(
        dbcCol(
          dbcCollapse(
            dbcCard("This is the left card.", body = TRUE),
            id = "left-collapse",
            is_open = TRUE
          )
        ),
        dbcCol(
          dbcCollapse(
            dbcCard("This is the right card.", body = TRUE),
            id = "right-collapse",
            is_open = TRUE
          )
        )
      ),
      className = "mt-3"
    )
  )
)


app$callback(
  output("left-collapse", "is_open"),
  list(
    input("left", "n_clicks"),
    input("both", "n_clicks"),
    state("left-collapse", "is_open")
  ),
  function(n_left, n_both, is_open) {
    if (n_left || n_both) {
      return(!is_open)
    }
    return(is_open)
  }
)


app$callback(
  output("right-collapse", "is_open"),
  list(
    input("right", "n_clicks"),
    input("both", "n_clicks"),
    state("right-collapse", "is_open")
  ),
  function(n_right, n_both, is_open) {
    if (n_right || n_both) {
      return(!is_open)
    }
    return(is_open)
  }
)
#----------------



app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
       htmlHr(),
       htmlH2("Collapse - Simple example"),
       collapse_simple,
       htmlHr(),
       htmlH2("Collapse - Multiple targets"),
       collapses_multiple,
       htmlHr(),
       htmlH2("Collapse - According"),
       accordion
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE, debug = TRUE)
