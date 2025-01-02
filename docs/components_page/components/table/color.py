import dash_bootstrap_components as dbc
from dash import Input, Output, html

color_selector = html.Div(
    [
        html.Div("Select a colour theme:"),
        dbc.Select(
            id="change-table-color",
            options=[
                {"label": "primary", "value": "primary"},
                {"label": "secondary", "value": "secondary"},
                {"label": "success", "value": "success"},
                {"label": "danger", "value": "danger"},
                {"label": "warning", "value": "warning"},
                {"label": "info", "value": "info"},
                {"label": "light", "value": "light"},
                {"label": "dark", "value": "dark"},
            ],
            value="primary",
        ),
    ],
    className="p-3 m-2 border",
)

table = html.Div(
    [
        color_selector,
        dbc.Table(
            # using the same table as in the above example
            table_header + table_body,
            id="table-color",
            color="primary",
        ),
    ]
)


@app.callback(Output("table-color", "color"), Input("change-table-color", "value"))
def change_table_colour(color):
    return color
