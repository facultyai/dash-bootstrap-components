import dash_bootstrap_components as dbc
import dash_html_components as html

dropdown = dbc.DropdownMenu(
    [
        dbc.DropdownMenuItem("Header", header=True),
        dbc.DropdownMenuItem("An item"),
        dbc.DropdownMenuItem(divider=True),
        dbc.DropdownMenuItem("Active and disabled", header=True),
        dbc.DropdownMenuItem("Active item", active=True),
        dbc.DropdownMenuItem("Disabled item", disabled=True),
        dbc.DropdownMenuItem(divider=True),
        html.P(
            "You can have other content here like text if you like.",
            className="text-muted px-4 mt-4",
        ),
    ],
    label="Menu",
)
