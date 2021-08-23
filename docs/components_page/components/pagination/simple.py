import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output

pagination = html.Div(
    dbc.Pagination(max_value=10),
)
