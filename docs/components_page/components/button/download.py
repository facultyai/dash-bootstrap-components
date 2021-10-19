import dash_bootstrap_components as dbc
from dash import html

button = html.Div(
    [
        dbc.Button(
            "Download",
            href="/static/data_file.txt",
            download="my_data.txt",
            external_link=True,
            color="primary",
        ),
    ]
)
