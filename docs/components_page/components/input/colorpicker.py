import dash_bootstrap_components as dbc
from dash import Input, Output, html

colorpicker = html.Div(
    [
        dbc.Label(["Select a ", html.Span("color", id="color")]),
        dbc.Input(
            type="color",
            id="colorpicker",
            value="#000000",
            style={"width": 75, "height": 50},
        ),
    ]
)

app.clientside_callback(
    """
    function(color) {
        return {"color": color}
    }
    """,
    Output("color", "style"),
    Input("colorpicker", "value"),
)


# Regular Dash callback
# @app.callback(Output("color", "style"), Input("colorpicker", "value"))
# def update_text(color):
#     return {"color": color}
