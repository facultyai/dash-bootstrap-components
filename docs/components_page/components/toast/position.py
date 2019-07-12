import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

toast = html.Div(
    [
        dbc.Button(
            "Open toast", id="positioned-toast-toggle", color="primary"
        ),
        dbc.Toast(
            "This toast is placed in the top right",
            id="positioned-toast",
            header="Positioned toast",
            is_open=False,
            dismissable=True,
            icon="danger",
            # top: 66 positions the toast below the navbar
            style={"position": "fixed", "top": 66, "right": 10, "width": 350},
        ),
    ]
)


@app.callback(
    Output("positioned-toast", "is_open"),
    [Input("positioned-toast-toggle", "n_clicks")],
)
def open_toast(n):
    if n:
        return True
    return False
