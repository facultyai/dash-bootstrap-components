library(dashBootstrapComponents)
library(dashHtmlComponents)

make_item <- function(i) {
  # we use this function to make the example items to avoid code duplication
  return(
    dbcCard(
      list(
        dbcCardHeader(
          htmlH2(
            dbcButton(
              sprintf("Collapsible group #%d", i),
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
  class_name = "accordion"
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
    } else {
      return(list(FALSE, FALSE, FALSE))
    }

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
