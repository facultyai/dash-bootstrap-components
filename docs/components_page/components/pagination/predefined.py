import dash_bootstrap_components as dbc
import dash_html_components as html


pagination = html.Div(
    dbc.Pagination(
        [
            dbc.PaginationItem(
                id="pagination-predefined-first", predefined_type="first"
            ),
            # FIXME: Unsure why this isn't working, whereas the others are
            # dbc.PaginationItem(
            #     id="pagination-predefined-previous",
            #     predefined_type="previous",
            # ),
            dbc.PaginationItem(id="pagination-predefined-1", item_title="1"),
            dbc.PaginationItem(
                id="pagination-predefined-ellipsis",
                predefined_type="ellipsis",
                disabled=True,
            ),
            dbc.PaginationItem(
                id="pagination-predefined-20",
                item_title="20",
                active=True,
            ),
            dbc.PaginationItem(
                id="pagination-predefined-ellipsis2",
                predefined_type="ellipsis",
                disabled=True,
            ),
            dbc.PaginationItem(
                id="pagination-predefined-300", item_title="300"
            ),
            dbc.PaginationItem(
                id="pagination-predefined-next", predefined_type="next"
            ),
            dbc.PaginationItem(
                id="pagination-predefined-last", predefined_type="last"
            ),
        ],
    ),
)
