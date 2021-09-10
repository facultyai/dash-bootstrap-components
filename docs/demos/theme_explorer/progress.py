import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

progress = html.Div(
    [
        make_subheading("Progress", "progress"),
        dbc.Progress("25%", value=25),
        dbc.Progress(value=50, striped=True, className="my-2"),
        dbc.Progress(value=75, color="success"),
    ],
    className="mb-4",
)
