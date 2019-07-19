import dash_bootstrap_components as dbc

inline_radioitems = dbc.FormGroup(
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

inline_checklist = dbc.FormGroup(
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

inline_switches = dbc.FormGroup(
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
