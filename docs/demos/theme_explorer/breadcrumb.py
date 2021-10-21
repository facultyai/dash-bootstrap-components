import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

breadcrumb = html.Div(
    [
        make_subheading("Breadcrumb", "breadcrumb"),
        dbc.Breadcrumb(
            items=[
                {"label": "Docs", "href": "/docs", "external_link": True},
                {
                    "label": "Components",
                    "href": "/docs/components",
                    "external_link": True,
                },
                {"label": "Breadcrumb", "active": True},
            ],
        ),
    ],
    className="mb-4",
)
