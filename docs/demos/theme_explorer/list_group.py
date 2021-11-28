import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

list_group = html.Div(
    [
        make_subheading("ListGroup", "list_group"),
        dbc.ListGroup(
            [
                dbc.ListGroupItem("No color applied"),
                dbc.ListGroupItem("The primary item", color="primary"),
                dbc.ListGroupItem("A secondary item", color="secondary"),
                dbc.ListGroupItem("A successful item", color="success"),
                dbc.ListGroupItem("A warning item", color="warning"),
                dbc.ListGroupItem("A dangerous item", color="danger"),
                dbc.ListGroupItem("An informative item", color="info"),
                dbc.ListGroupItem("A light item", color="light"),
                dbc.ListGroupItem("A dark item", color="dark"),
                dbc.ListGroupItem("An action item", action=True),
                dbc.ListGroupItem("An active item", active=True),
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
