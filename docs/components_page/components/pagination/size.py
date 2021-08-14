import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State


def make_item(i, size):
    # we use this function to make the example items to avoid code duplication
    return dbc.PaginationItem(
        id=f"pagination-size-{i}-{size}", item_title=f"{i}", active=(i == 3)
    )


pagination = html.Div(
    [
        html.Div("Small"),
        dbc.Pagination([make_item(i + 1, "sm") for i in range(5)], size="sm"),
        html.Div("Default"),
        dbc.Pagination([make_item(i + 1, "std") for i in range(5)]),
        html.Div("Large"),
        dbc.Pagination([make_item(i + 1, "lg") for i in range(5)], size="lg"),
    ]
)
