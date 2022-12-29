import dash_bootstrap_components as dbc
from dash import html

popovers = html.Div(
    [
        # First example - using dbc.PopoverBody
        dbc.Button(
            "popover-target",
            id="popover-target",
            className="me-1",
        ),
        dbc.Popover(
            dbc.PopoverBody("My `target` is `popover-target`."),
            target="popover-target",
            trigger="click",
        ),
        # Second example - using body=True
        dbc.Button(
            "popover-alt-target",
            id="popover-alt-target",
            className="me-1",
        ),
        dbc.Popover(
            "My `target` is `popover-alt-target`.",
            body=True,
            target="popover-alt-target",
            trigger="click",
        ),
    ]
)
