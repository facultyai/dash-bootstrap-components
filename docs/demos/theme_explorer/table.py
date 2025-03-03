import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

table_header = html.Thead(
    html.Tr(
        [
            html.Th("#"),
            html.Th("First name"),
            html.Th("Last name"),
        ]
    )
)

table_body = html.Tbody(
    [
        html.Tr(
            [
                html.Th("1", scope="row"),
                html.Td("Tom"),
                html.Td("Cruise"),
            ]
        ),
        html.Tr(
            [
                html.Th("2", scope="row"),
                html.Td("Jodie"),
                html.Td("Foster"),
            ]
        ),
        html.Tr(
            [
                html.Th("3", scope="row"),
                html.Td("Chadwick"),
                html.Td("Boseman"),
            ]
        ),
    ]
)

table = html.Div(
    [
        make_subheading("Table", "table"),
        dbc.Table(
            [table_header, table_body],
            className="mb-2",
        ),
        dbc.Row(
            [
                dbc.Col(
                    dbc.Table(
                        [table_header, table_body],
                        responsive=True,
                        striped=True,
                        hover=True,
                        className="mb-2",
                    ),
                ),
                dbc.Col(
                    dbc.Table(
                        [table_header, table_body],
                        bordered=True,
                        hover=True,
                        responsive=True,
                        striped=True,
                        className="mb-2",
                        color="dark",
                    ),
                ),
            ]
        ),
        dbc.Row(
            [
                dbc.Col(
                    dbc.Table(
                        [table_header, table_body],
                        color=color,
                        className="mb-2",
                    ),
                    xs=6,
                )
                for color in [
                    "primary",
                    "secondary",
                    "success",
                    "danger",
                    "warning",
                    "info",
                    "light",
                    "dark",
                ]
            ]
        ),
    ],
    className="mb-4",
)
