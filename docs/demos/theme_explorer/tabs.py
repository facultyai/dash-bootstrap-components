import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

tabs = html.Div(
    [
        make_subheading("Tabs", "tabs"),
        dbc.Tabs(
            [
                dbc.Tab(
                    html.P("This is tab 1", class_name="py-3"), label="Tab 1"
                ),
                dbc.Tab(
                    dbc.Card(
                        [
                            html.P(
                                "This tab has a card!",
                                class_name="card-text",
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
    class_name="mb-4",
)
