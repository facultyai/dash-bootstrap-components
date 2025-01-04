import dash_bootstrap_components as dbc
from dash import html

list_group = dbc.ListGroup(
    [
        dbc.ListGroupItem(
            [
                html.Div(
                    [
                        html.H5("This item has a heading", className="mb-1"),
                        html.Small("Yay!", className="text-success"),
                    ],
                    className="d-flex w-100 justify-content-between",
                ),
                html.P("And some text underneath", className="mb-1"),
                html.Small("Plus some small print.", className="text-muted"),
            ]
        ),
        dbc.ListGroupItem(
            [
                html.Div(
                    [
                        html.H5("This item also has a heading", className="mb-1"),
                        html.Small("Ok!", className="text-warning"),
                    ],
                    className="d-flex w-100 justify-content-between",
                ),
                html.P("And some more text underneath too", className="mb-1"),
                html.Small("Plus even more small print.", className="text-muted"),
            ]
        ),
    ]
)
