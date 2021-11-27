import dash_bootstrap_components as dbc
from dash import html

popovers = html.Div(
    [
        dbc.Button(
            "Click Me",
            id="component-target",
            n_clicks=0,
        ),
        dbc.Popover(
            [
                dbc.PopoverHeader("Popover header"),
                dbc.PopoverBody("And here's some amazing content. Cool!"),
            ],
            target="component-target",
            trigger="click",
        ),
    ]
)
