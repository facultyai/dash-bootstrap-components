import dash_bootstrap_components as dbc

radioitems = dbc.FormGroup(
    [
        dbc.Label("Choose one"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=1,
        ),
    ]
)

checklist = dbc.FormGroup(
    [
        dbc.Label("Choose a bunch"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            values=[],
        ),
    ]
)

inline_radioitems = dbc.FormGroup(
    [
        dbc.Label("Choose one"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            value=1,
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
            values=[],
            inline=True,
        ),
    ]
)

inputs = dbc.Form([radioitems, checklist, inline_radioitems, inline_checklist])
