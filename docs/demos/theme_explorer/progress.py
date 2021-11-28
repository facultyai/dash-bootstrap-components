import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

progress = html.Div(
    [
        make_subheading("Progress", "progress"),
        dbc.Progress(label="25%", value=25),
        dbc.Progress(value=50, striped=True, className="my-2"),
        dbc.Progress(
            value=50,
            striped=True,
            animated=True,
            className="my-2",
        ),
        dbc.Progress(
            [
                dbc.Progress(value=20, color="success", bar=True),
                dbc.Progress(value=30, color="warning", bar=True),
                dbc.Progress(value=20, color="danger", bar=True),
            ]
        ),
    ],
    className="mb-4",
)
