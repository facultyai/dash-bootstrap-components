import dash_bootstrap_components as dbc
import dash_html_components as html

pagination = html.Div(
    [
        html.Div("Small"),
        dbc.Pagination(max_value=5, size="sm"),
        html.Div("Default"),
        dbc.Pagination(max_value=5),
        html.Div("Large"),
        dbc.Pagination(max_value=5, size="lg"),
    ]
)
