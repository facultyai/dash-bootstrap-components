import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

COOKIE = "https://todaysmama.com/.image/t_share/MTU5OTEwMzkyMDIyMTE1NzAz/cookie-monster.png"  # noqa
modal = html.Div(
    [
        make_subheading("Modal", "modal"),
        html.P(
            [
                dbc.Button("Show the cookie monster", id="modal-button"),
                dbc.Modal(
                    [
                        dbc.ModalHeader("Cookies!"),
                        dbc.ModalBody(
                            html.Img(src=COOKIE, style={"width": "100%"})
                        ),
                    ],
                    id="modal",
                    is_open=False,
                ),
            ]
        ),
    ],
    className="mb-4",
)
