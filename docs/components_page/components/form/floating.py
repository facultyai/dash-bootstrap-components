import dash_bootstrap_components as dbc

form = dbc.FormFloating(
    [
        dbc.Input(type="email", placeholder="example@internet.com"),
        dbc.Label("Email address"),
    ]
)
