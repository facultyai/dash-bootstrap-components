import dash_bootstrap_components as dbc
import dash_html_components as html

list_group = dbc.ListGroup(
    [
        dbc.ListGroupItem(
            [
                html.Div(
                    [
                        html.H5("This item has a heading", class_name="mb-1"),
                        html.Small("Yay!", class_name="text-success"),
                    ],
                    class_name="d-flex w-100 justify-content-between",
                ),
                html.P("And some text underneath", class_name="mb-1"),
                html.Small("Plus some small print.", class_name="text-muted"),
            ]
        ),
        dbc.ListGroupItem(
            [
                html.Div(
                    [
                        html.H5(
                            "This item also has a heading", class_name="mb-1"
                        ),
                        html.Small("Ok!", class_name="text-warning"),
                    ],
                    class_name="d-flex w-100 justify-content-between",
                ),
                html.P("And some more text underneath too", class_name="mb-1"),
                html.Small(
                    "Plus even more small print.", class_name="text-muted"
                ),
            ]
        ),
    ]
)
