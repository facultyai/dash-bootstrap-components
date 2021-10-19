import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

toast = html.Div(
    [
        make_subheading("Toast", "toast"),
        dbc.Button(
            "Open toast",
            id="auto-toast-toggle",
            color="primary",
            className="mb-3",
        ),
        dbc.Toast(
            html.P("This is the content of the toast", className="mb-0"),
            id="auto-toast",
            header="This is the header",
            icon="primary",
            duration=4000,
        ),
    ],
    className="mb-2",
)
