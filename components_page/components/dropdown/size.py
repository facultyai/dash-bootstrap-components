import dash_bootstrap_components as dbc
import dash_html_components as html

items = [
    dbc.DropdownMenuItem("First"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Second"),
]

dropdown = html.Div(
    [
        dbc.DropdownMenu(
            label="large dropdown",
            bs_size="lg",
            children=items,
            className="mb-3",
        ),
        dbc.DropdownMenu(
            label="normal dropdown", children=items, className="mb-3"
        ),
        dbc.DropdownMenu(label="small dropdown", bs_size="sm", children=items),
    ]
)
