import dash_bootstrap_components as dbc

dropdown = dbc.DropdownMenu(
    [
        dbc.DropdownMenuItem("Item 1"),
        dbc.DropdownMenuItem("Item 2"),
        dbc.DropdownMenuItem("Item 3"),
    ],
    label="Custom",
    className="m-1",
    toggle_style={
        "textTransform": "uppercase",
        "background": "#FB79B3",
    },
    toggleClassName="fst-italic border border-dark",
)
