import dash_bootstrap_components as dbc
from dash import html

inline_radioitems = html.Div(
    [
        dbc.Label("Choose one"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=1,
            id="radioitems-inline-input",
            inline=True,
        ),
    ]
)

inline_checklist = html.Div(
    [
        dbc.Label("Choose a bunch"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=[],
            id="checklist-inline-input",
            inline=True,
        ),
    ]
)

inline_switches = html.Div(
    [
        dbc.Label("Toggle a bunch"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=[],
            id="switches-inline-input",
            inline=True,
            switch=True,
        ),
    ]
)

inline_inputs = dbc.Form(
    [inline_radioitems, inline_checklist, inline_switches]
)
