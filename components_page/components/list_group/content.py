import dash_bootstrap_components as dbc

list_group = dbc.ListGroup(
    [
        dbc.ListGroupItem(
            [
                dbc.ListGroupItemHeading("This item has a heading"),
                dbc.ListGroupItemText("And some text underneath"),
            ]
        ),
        dbc.ListGroupItem(
            [
                dbc.ListGroupItemHeading("This item also has a heading"),
                dbc.ListGroupItemText("And some more text underneath too"),
            ]
        ),
    ]
)
