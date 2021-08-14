using DashBootstrapComponents, DashHtmlComponents


pagination = html_div(
    dbc_pagination(
        [
            dbc_paginationitem(
                id="pagination-predefined-first", predefined_type="first"
            ),
            # FIXME: Unsure why this isn't working, whereas the others are
            # dbc_paginationitem(
            #     id="pagination-predefined-previous",
            #     predefined_type="previous",
            # ),
            dbc_paginationitem(id="pagination-predefined-1", item_title="1"),
            dbc_paginationitem(
                id="pagination-predefined-ellipsis",
                predefined_type="ellipsis",
                disabled=true,
            ),
            dbc_paginationitem(
                id="pagination-predefined-20",
                item_title="20",
                active=true,
            ),
            dbc_paginationitem(
                id="pagination-predefined-ellipsis2",
                predefined_type="ellipsis",
                disabled=true,
            ),
            dbc_paginationitem(
                id="pagination-predefined-300", item_title="300"
            ),
            dbc_paginationitem(
                id="pagination-predefined-next", predefined_type="next"
            ),
            dbc_paginationitem(
                id="pagination-predefined-last", predefined_type="last"
            ),
        ],
    ),
)
