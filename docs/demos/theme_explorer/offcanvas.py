import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

COOKIE = (
    "https://todaysmama.com/.image/t_share/MTU5OTEwMzkyMDIyMTE1NzAz/cookie-monster.png"  # noqa
)
offcanvas = html.Div(
    [
        make_subheading("Offcanvas", "offcanvas"),
        html.P(
            [
                dbc.Button("Show the cookie monster", id="offcanvas-button"),
                dbc.Offcanvas(
                    html.Img(src=COOKIE, style={"width": "100%"}),
                    title="Cookies!",
                    id="offcanvas",
                    is_open=False,
                ),
            ]
        ),
    ],
    className="mb-4",
)
