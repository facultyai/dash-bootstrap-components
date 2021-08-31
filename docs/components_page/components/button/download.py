import dash_bootstrap_components as dbc
import dash_html_components as html

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
