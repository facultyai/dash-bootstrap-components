library(dashBootstrapComponents)
library(dashHtmlComponents)

make_item <- function(i, size) {:
    # we use this function to make the example items to avoid code duplication
    return(
        dbcPaginationItem(
        id=sprintf("pagination-size-%d-%s", i, size), 
        item_title=sprintf("%d", i), 
        active=(i == 3)
    ))
}


pagination = htmlDiv(
    [
        htmlDiv("Small"),
        dbcPagination(
            (1:5)[make_item(i, "sm")], size="sm"
        ),
        htmlDiv("Default"),
        dbcPagination(
            (1:5)[make_item(i, "std")], 
        ),
        htmlDiv("Large"),
        dbcPagination(
            (1:5)[make_item(i, "lg")], size="lg"
        ),
    ]
)
