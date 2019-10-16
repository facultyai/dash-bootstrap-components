import dash_bootstrap_components as dbc

list_group = dbc.ListGroup(
    [
        dbc.ListGroupItem("Active item", active=True),
        dbc.ListGroupItem("Item 2"),
        dbc.ListGroupItem("Item 3"),
    ]
)
