library(dashBootstrapComponents)
library(dashHtmlComponents)

pagination <- htmlDiv(
    dbcPagination(
        list(
            dbcPaginationItem(
                id="pagination-predefined-first", predefined_type="first"
            ),
            # FIXME: Unsure why this isn't working, whereas the others are
            # dbcPaginationItem(
            #     id="pagination-predefined-previous",
            #     predefined_type="previous",
            # ),
            dbcPaginationItem(
                id="pagination-predefined-1", item_title="1"
            ),
            dbcPaginationItem(
                id="pagination-predefined-ellipsis",
                predefined_type="ellipsis",
                disabled=TRUE,
            ),
            dbcPaginationItem(
                id="pagination-predefined-20",
                item_title="20",
                active=TRUE,
            ),
            dbcPaginationItem(
                id="pagination-predefined-ellipsis2",
                predefined_type="ellipsis",
                disabled=TRUE,
            ),
            dbcPaginationItem(
                id="pagination-predefined-300", item_title="300"
            ),
            dbcPaginationItem(
                id="pagination-predefined-next", predefined_type="next"
            ),
            dbcPaginationItem(
                id="pagination-predefined-last", predefined_type="last"
            ),
        ),
    ),
)
