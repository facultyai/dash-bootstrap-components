import dash_bootstrap_components as dbc
import dash_html_components as html

pagination = html.Div(
    dbc.Pagination(max_value=10),
)
