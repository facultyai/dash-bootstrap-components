import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

list_group = html.Div(
    [
        make_subheading("ListGroup", "list_group"),
        dbc.ListGroup(
            [
                dbc.ListGroupItem("Item 1", color="primary", action=True),
                dbc.ListGroupItem("Item 2"),
                dbc.ListGroupItem("Item 3"),
                dbc.ListGroupItem(
                    [
                        html.H5("Item 4 heading"),
                        html.P("Item 4 text"),
                    ]
                ),
            ]
        ),
    ],
    className="mb-4",
)
