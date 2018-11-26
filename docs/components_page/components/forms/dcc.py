import dash_bootstrap_components as dbc
import dash_core_components as dcc

dropdown = dbc.FormGroup(
    [
        dbc.Label("Dropdown", html_for="dropdown"),
        dcc.Dropdown(
            id="dropdown",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
        ),
    ]
)

slider = dbc.FormGroup(
    [
        dbc.Label("Slider", html_for="slider"),
        dcc.Slider(id="slider", min=0, max=10, step=0.5, value=3),
    ]
)

range_slider = dbc.FormGroup(
    [
        dbc.Label("RangeSlider", html_for="range-slider"),
        dcc.RangeSlider(id="range-slider", min=0, max=10, value=[3, 7]),
    ]
)

form = dbc.Form([dropdown, slider, range_slider])
