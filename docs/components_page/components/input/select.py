import dash_bootstrap_components as dbc

select = dbc.Select(
    id="select",
    options=[
        {"label": "Option 1", "value": "1"},
        {"label": "Option 2", "value": "2"},
        {"label": "Disabled option", "value": "3", "disabled": True},
    ],
)
