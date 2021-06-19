import dash_bootstrap_components as dbc

card = dbc.Card(
    dbc.ListGroup(
        [
            dbc.ListGroupItem("Item 1"),
            dbc.ListGroupItem("Item 2"),
            dbc.ListGroupItem("Item 3"),
        ],
        flush=True,
    ),
    style={"width": "18rem"},
)
