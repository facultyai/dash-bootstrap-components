import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

toast = html.Div(
    [
        dbc.Button(
            "Open toast",
            id="auto-toast-toggle",
            color="primary",
            className="mb-3",
        ),
        dbc.Toast(
            [html.P("This is the content of the toast", className="mb-0")],
            id="auto-toast",
            header="This is the header",
            icon="primary",
            duration=4000,
        ),
    ]
)


@app.callback(
    Output("auto-toast", "is_open"), [Input("auto-toast-toggle", "n_clicks")]
)
def open_toast(n):
    return True
