import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

pagination = html.Div(
    [
        make_subheading("Pagination", "pagination"),
        dbc.Pagination(
            max_value=10,
            fully_expanded=False,
            first_last=True,
            previous_next=True,
        ),
    ],
    className="mb-4",
)
