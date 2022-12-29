import dash_bootstrap_components as dbc
from dash import Input, Output, html, no_update

toast = html.Div(
    [
        dbc.Button(
            "Open toast",
            id="simple-toast-toggle",
            color="primary",
            className="mb-3",
            n_clicks=0,
        ),
        dbc.Toast(
            [html.P("This is the content of the toast", className="mb-0")],
            id="simple-toast",
            header="This is the header",
            icon="primary",
            dismissable=True,
            is_open=False,
        ),
    ]
)


@app.callback(
    Output("simple-toast", "is_open"),
    [Input("simple-toast-toggle", "n_clicks")],
)
def open_toast(n):
    if n == 0:
        return no_update
    return True
