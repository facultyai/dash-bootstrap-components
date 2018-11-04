import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

app = dash.Dash()

navbar = dbc.Navbar(
    brand="Dash Bootstrap components",
    brand_href="https://github.com/ASIDataScience/dash-bootstrap-components",
    sticky="top",
    children=[
        dbc.NavItem(dbc.NavLink("ASI", href="https://www.asidatascience.com")),
        dbc.DropdownMenu(
            nav=True,
            in_navbar=True,
            label="Menu",
            children=[
                dbc.DropdownMenuItem("Entry 1", href="https://google.com"),
                dbc.DropdownMenuItem(
                    "Entry 2", href="/test", id="dd-internal"
                ),
                dbc.DropdownMenuItem(divider=True),
                dbc.DropdownMenuItem("A heading", header=True),
                dbc.DropdownMenuItem(
                    "Entry 3", href="/external-test", external_link=True
                ),
                dbc.DropdownMenuItem("Entry 4 - does nothing", id="dd-button"),
            ],
        ),
    ],
)

app.layout = html.Div(
    [navbar, html.Div(id="counter"), html.Div(id="counter2")]
)


@app.callback(Output("counter", "children"), [Input("dd-button", "n_clicks")])
def count(n):
    return str(n)


@app.callback(
    Output("counter2", "children"), [Input("dd-internal", "n_clicks")]
)
def count2(n):
    return str(n)


if __name__ == "__main__":
    app.run_server(port=8888)
