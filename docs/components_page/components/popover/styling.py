import dash_bootstrap_components as dbc
from dash import html

popovers = html.Div(
    [
        dbc.Button(
            "Hidden Arrow",
            id="hide-arrow-target",
            className="me-1",
            n_clicks=0,
        ),
        dbc.Popover(
            "I am a popover without an arrow!",
            target="hide-arrow-target",
            trigger="legacy",
            hide_arrow=True,
        ),
        dbc.Button(
            "Offset Popover",
            id="offset-target",
            n_clicks=0,
        ),
        dbc.Popover(
            "I am a popover that's been offset!",
            target="offset-target",
            trigger="legacy",
            hide_arrow=True,
            offset="50,20",
        ),
    ]
)
