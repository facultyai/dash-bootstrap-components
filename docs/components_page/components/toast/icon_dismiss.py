import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

toast = html.Div(
    [
        dbc.Button(
            "Open toast",
            id="simple-toast-toggle",
            color="primary",
            className="mb-3",
        ),
        dbc.Toast(
            [html.P("This is the content of the toast", className="mb-0")],
            id="simple-toast",
            header="This is the header",
            icon="primary",
            dismissable=True,
        ),
    ]
)


@app.callback(
    Output("simple-toast", "is_open"),
    [Input("simple-toast-toggle", "n_clicks")],
)
def open_toast(n):
    return True
