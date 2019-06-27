import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

dropdown = html.Div(
    [
        dbc.DropdownMenu(
            [
                dbc.DropdownMenuItem("A button", id="dropdown-button"),
                dbc.DropdownMenuItem(
                    "Internal link", href="/l/components/dropdown_menu"
                ),
                dbc.DropdownMenuItem(
                    "External Link", href="https://github.com"
                ),
                dbc.DropdownMenuItem(
                    "External relative",
                    href="/l/components/dropdown_menu",
                    external_link=True,
                ),
            ],
            label="Menu",
        ),
        html.P(id="item-clicks", className="mt-3"),
    ]
)


@app.callback(
    Output("item-clicks", "children"), [Input("dropdown-button", "n_clicks")]
)
def count_clicks(n):
    if n:
        return f"Button clicked {n} times."
    return "Button not clicked yet."
