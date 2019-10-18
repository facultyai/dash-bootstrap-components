import dash_bootstrap_components as dbc

progress = dbc.Progress(
    [
        dbc.Progress(value=20, color="success", bar=True),
        dbc.Progress(value=30, color="warning", bar=True),
        dbc.Progress(value=20, color="danger", bar=True),
    ],
    multi=True,
)
