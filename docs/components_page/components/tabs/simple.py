import dash_bootstrap_components as dbc
import dash_html_components as html

tab1_content = dbc.Card(
    dbc.CardBody(
        [
            dbc.CardText("This is tab 1!"),
            dbc.Button("Click here", color="success"),
        ]
    ),
    # add small margin to the top of the card
    className="mt-3"
)

tab2_content = dbc.Card(
    dbc.CardBody(
        [
            dbc.CardText("This is tab 2!"),
            dbc.Button("Don't click here", color="danger"),
        ]
    ),
    # add small margin to the top of the card
    className="mt-3"
)


tabs = [
    html.H1("Tabs"),
    dbc.Tabs(
        [
            dbc.Tab(tab1_content, label="Tab 1"),
            dbc.Tab(tab2_content, label="Tab 2"),
        ]
    ),
]
