import dash_bootstrap_components as dbc
from dash import html

badges = html.Div(
    [
        html.H1(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H2(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H3(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H4(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H5(["Example heading", dbc.Badge("New", className="ms-1")]),
        html.H6(["Example heading", dbc.Badge("New", className="ms-1")]),
    ]
)
