import dash_bootstrap_components as dbc
import dash_html_components as html

list_group = html.Div(
    [
        dbc.ListGroup(
            [
                dbc.ListGroupItem("Item 1"),
                dbc.ListGroupItem("Item 2"),
                dbc.ListGroupItem("Item 3"),
            ],
            horizontal=True,
            className="mb-2",
        ),
        dbc.ListGroup(
            [
                dbc.ListGroupItem("Item 1"),
                dbc.ListGroupItem("Item 2"),
                dbc.ListGroupItem("Item 3"),
            ],
            horizontal="lg",
        ),
    ]
)
