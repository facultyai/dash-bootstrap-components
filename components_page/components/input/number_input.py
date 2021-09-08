import dash_bootstrap_components as dbc
from dash import html

number_input = html.Div(
    [
        html.P("Type a number outside the range 0-10"),
        dbc.Input(type="number", min=0, max=10, step=1),
    ],
    id="styled-numeric-input",
)
