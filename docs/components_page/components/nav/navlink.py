import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

nav = html.Div(
    [
        dbc.Nav(
            [
                dbc.NavLink("Internal link", href="/l/components/nav"),
                dbc.NavLink("External link", href="https://github.com"),
                dbc.NavLink(
                    "External relative",
                    href="/l/components/nav",
                    external_link=True,
                ),
                dbc.NavLink("Button", id="button-link", n_clicks=0),
            ]
        ),
        html.Br(),
        html.P(id="button-clicks"),
    ]
)


@app.callback(
    Output("button-clicks", "children"), [Input("button-link", "n_clicks")]
)
def show_clicks(n):
    return "Button clicked {} times".format(n)
