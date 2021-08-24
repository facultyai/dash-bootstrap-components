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
            size="lg",
            children=items,
            class_name="mb-3",
        ),
        dbc.DropdownMenu(
            label="normal dropdown", children=items, class_name="mb-3"
        ),
        dbc.DropdownMenu(label="small dropdown", size="sm", children=items),
    ]
)
