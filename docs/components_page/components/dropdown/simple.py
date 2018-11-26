import dash_bootstrap_components as dbc

external_url = "https://github.com/asidatascience/dash-bootstrap-components"

dropdown = dbc.DropdownMenu(
    label="Menu",
    children=[
        dbc.DropdownMenuItem("First"),
        dbc.DropdownMenuItem(divider=True),
        dbc.DropdownMenuItem("Links", header=True),
        dbc.DropdownMenuItem("Internal link", href="/l/components/alerts"),
        dbc.DropdownMenuItem("External link", href=external_url),
        dbc.DropdownMenuItem(divider=True),
        dbc.DropdownMenuItem("Disabled", disabled=True),
        dbc.DropdownMenuItem("Active", active=True),
    ],
)
