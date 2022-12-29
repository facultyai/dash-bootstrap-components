import dash_bootstrap_components as dbc
from dash import dcc, html

dropdown = html.Div(
    [
        dbc.Label("Dropdown", html_for="dropdown"),
        dcc.Dropdown(
            id="dropdown",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
        ),
    ],
    className="mb-3",
)

slider = html.Div(
    [
        dbc.Label("Slider", html_for="slider"),
        dcc.Slider(id="slider", min=0, max=10, step=0.5, value=3),
    ],
    className="mb-3",
)

range_slider = html.Div(
    [
        dbc.Label("RangeSlider", html_for="range-slider"),
        dcc.RangeSlider(id="range-slider", min=0, max=10, value=[3, 7]),
    ],
    className="mb-3",
)

form = dbc.Form([dropdown, slider, range_slider])
