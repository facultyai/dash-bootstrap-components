import dash_bootstrap_components as dbc

list_group = dbc.ListGroup(
    [
        dbc.ListGroupItem("No color applied"),
        dbc.ListGroupItem("The primary item", color="primary"),
        dbc.ListGroupItem("A secondary item", color="secondary"),
        dbc.ListGroupItem("A successful item", color="success"),
        dbc.ListGroupItem("A warning item", color="warning"),
        dbc.ListGroupItem("A dangerous item", color="danger"),
        dbc.ListGroupItem("An informative item", color="info"),
        dbc.ListGroupItem("A light item", color="light"),
        dbc.ListGroupItem("A dark item", color="dark"),
    ]
)
