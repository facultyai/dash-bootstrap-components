import dash_bootstrap_components as dbc
import dash_html_components as html

from .simple import table as simple_table

table = html.Div(
    [
        html.H4("Styling the table"),
        dbc.Table(
            simple_table.children[1].children,
            bordered=True,
            dark=True,
            hover=True,
            responsive=True,
            striped=True,
        ),
    ]
)
