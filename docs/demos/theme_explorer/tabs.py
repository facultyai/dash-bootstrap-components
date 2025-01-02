import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

tabs = html.Div(
    [
        make_subheading("Tabs", "tabs"),
        dbc.Tabs(
            [
                dbc.Tab(html.P("This is tab 1", className="py-3"), label="Tab 1"),
                dbc.Tab(
                    dbc.Card(
                        [
                            html.P(
                                "This tab has a card!",
                                className="card-text",
                            ),
                            dbc.Button("Click here", color="success"),
                        ],
                        body=True,
                    ),
                    label="Tab 2",
                    style={"padding": "10px"},
                ),
            ]
        ),
    ],
    className="mb-4",
)
