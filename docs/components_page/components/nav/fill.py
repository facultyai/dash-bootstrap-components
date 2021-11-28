import dash_bootstrap_components as dbc
from dash import html

nav_contents = [
    dbc.NavItem(dbc.NavLink("Active", href="#", active=True)),
    dbc.NavItem(dbc.NavLink("A much longer link label", href="#")),
    dbc.NavItem(dbc.NavLink("Link", href="#")),
]

nav1 = dbc.Nav(nav_contents, pills=True, fill=True)

nav2 = dbc.Nav(nav_contents, pills=True, justified=True)

navs = html.Div([nav1, html.Hr(), nav2])
