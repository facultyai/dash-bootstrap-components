library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)


make_item <- function(i) {
    # we use this function to make the example items to avoid code duplication
    return(
        dbcPaginationItem(
            id=sprintf("pagination-simple-%d",i), 
            item_title=sprintf("%d",i)
        )
    )
}

pagination <- htmlDiv(
    list(
        htmlDiv("Choose a page", id="pagination-simple-content"),
        dbcPagination((1:5)[make_item(i, "sm")])
    )
)


app$callback(
    list(
        output("pagination-simple-content", "children"),
        output("pagination-simple-1", "active"),
        output("pagination-simple-2", "active"),
        output("pagination-simple-3", "active"),
        output("pagination-simple-4", "active"),
        output("pagination-simple-5", "active")
    ),
    list(
        input("pagination-simple-1", "n_clicks"),
        input("pagination-simple-2", "n_clicks"),
        input("pagination-simple-3", "n_clicks"),
        input("pagination-simple-4", "n_clicks"),
        input("pagination-simple-5", "n_clicks"),
        state("pagination-simple-1", "active"),
        state("pagination-simple-2", "active"),
        state("pagination-simple-3", "active"),
        state("pagination-simple-4", "active"),
        state("pagination-simple-5", "active")
    ),

function(n1, n2, n3, n4, n5, a1, a2, a3, a4, a5):
    ctx <- app$callback_context()

    button_id <- if (ctx$triggered$value) {
      unlist(strsplit(ctx$triggered$prop_id, "[.]"))[1]
    } else return(list("Choose a page", FALSE, FALSE, FALSE, FALSE, FALSE))

    if (button_id == "pagination-simple-1" && n1 > 0) {
        return(list("Page 1 selected", !a1, FALSE, FALSE, FALSE, FALSE))
    } else if (button_id == "pagination-simple-2" && n2 > 0) {
        return(list("Page 2 selected", FALSE, !a2, FALSE, FALSE, FALSE))
    } else if (button_id == "pagination-simple-3" && n3 > 0) {
        return(list("Page 3 selected", FALSE, FALSE, !a3, FALSE, FALSE))
    } else if (button_id == "pagination-simple-4" && n4 > 0) {
        return(list("Page 4 selected", FALSE, FALSE, FALSE, !a4, FALSE))
    } else if (button_id == "pagination-simple-5" && n5 > 0) {
        return(list("Page 5 selected", FALSE, FALSE, FALSE, FALSE, !a5))
    }
    return(list("Unknown page", FALSE, FALSE, FALSE, FALSE, FALSE))
)