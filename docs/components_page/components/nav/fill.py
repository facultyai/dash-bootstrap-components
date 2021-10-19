import dash_bootstrap_components as dbc
from dash import html

nav1 = dbc.Nav(
    [
        dbc.NavItem(dbc.NavLink("A link", href="#")),
        dbc.NavItem(dbc.NavLink("Another link with a longer label", href="#")),
    ],
    fill=True,
)

nav2 = dbc.Nav(
    [
        dbc.NavItem(dbc.NavLink("A link", href="#")),
        dbc.NavItem(dbc.NavLink("Another link with a longer label", href="#")),
    ],
    justified=True,
)

navs = html.Div([nav1, html.Hr(), nav2])
