import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

collapse = html.Div(
    [
        make_subheading("Collapse", "collapse"),
        html.Div(
            [
                dbc.Button("Open collapse", id="collapse-button", className="mb-2"),
                dbc.Collapse(
                    dbc.Card(dbc.CardBody("This content is hidden in the collapse")),
                    id="collapse",
                ),
            ]
        ),
    ],
    className="mb-4",
)
