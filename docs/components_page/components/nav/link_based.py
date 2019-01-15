import dash_bootstrap_components as dbc

nav = dbc.Nav(
    [
        dbc.NavLink("Active", active=True, href="#"),
        dbc.NavLink("A link", href="#"),
        dbc.NavLink("Another link", href="#"),
        dbc.NavLink("Disabled", disabled=True, href="#"),
    ]
)
