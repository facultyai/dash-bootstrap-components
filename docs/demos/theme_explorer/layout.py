import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

layout = html.Div(
    [
        make_subheading("Layout", "layout"),
        html.Div(
            [
                dbc.Container(html.Div("A container", className="border")),
                dbc.Row(
                    dbc.Col(html.Div("A single column", className="border"))
                ),
                dbc.Row(
                    [
                        dbc.Col(
                            html.Div(
                                "One of three columns", className="border"
                            )
                        ),
                        dbc.Col(
                            html.Div(
                                "One of three columns", className="border"
                            )
                        ),
                        dbc.Col(
                            html.Div(
                                "One of three columns", className="border"
                            )
                        ),
                    ]
                ),
            ]
        ),
    ]
)
