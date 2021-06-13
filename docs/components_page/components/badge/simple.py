import dash_bootstrap_components as dbc

simple_badge = dbc.Button(
    ["Notifications", dbc.Badge("4", color="light", className="ml-1")],
    color="primary",
)
