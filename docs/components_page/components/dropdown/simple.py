import dash_html_components as html
import dash_bootstrap_components as dbc

dropdown = html.Div(
    [
        html.H2("Dropdown menu"),
        dbc.DropdownMenu(
            label="Menu",
            children=[
                dbc.DropdownMenuItem("First"),
                dbc.DropdownMenuItem(divider=True),
                dbc.DropdownMenuItem("Internal link", href="/l/components/alerts"),
            ]
        )
    ]
)
