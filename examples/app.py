import dash
import dash_bootstrap_components as dbc
import dash_html_components as html

app = dash.Dash()

header = html.Div(
    [
        html.H1("Dash Bootstrap Components"),
        html.P(
            [
                "This app demonstrates components available in ",
                html.Code("dash-bootstrap-components"),
            ]
        ),
    ]
)

alerts = html.Div(
    [
        html.H2("Alerts"),
        dbc.Alert("This is an alert", color="primary"),
        dbc.Alert("Danger!", color="danger"),
    ]
)

badges = html.Div(
    [
        html.H2("Badges"),
        html.H3(
            [
                "This is a heading with a badge!",
                dbc.Badge("New!", color="success"),
            ]
        ),
    ]
)

buttons = html.Div(
    [
        html.H2("Buttons"),
        html.Div(
            [
                dbc.Button("Primary", color="primary"),
                " ",
                dbc.Button("Secondary", color="secondary"),
                " ",
                dbc.Button("Success", color="success"),
                " ",
                dbc.Button("Warning", color="warning"),
                " ",
                dbc.Button("Danger", color="danger"),
                " ",
                dbc.Button("Info", color="info"),
            ]
        ),
        html.Br(),
        html.H4("Outline buttons"),
        html.Div(
            [
                dbc.Button("Primary", outline=True, color="primary"),
                " ",
                dbc.Button("Secondary", outline=True, color="secondary"),
                " ",
                dbc.Button("Success", outline=True, color="success"),
                " ",
                dbc.Button("Warning", outline=True, color="warning"),
                " ",
                dbc.Button("Danger", outline=True, color="danger"),
                " ",
                dbc.Button("Info", outline=True, color="info"),
            ]
        ),
        html.Br(),
        html.H4("Button group"),
        html.Div(
            dbc.ButtonGroup(
                [
                    dbc.Button("Primary", color="primary"),
                    dbc.Button("Secondary", color="secondary"),
                    dbc.Button("Success", color="success"),
                    dbc.Button("Warning", color="warning"),
                    dbc.Button("Danger", color="danger"),
                    dbc.Button("Info", color="info"),
                ]
            )
        ),
    ]
)

cards = html.Div(
    [
        html.H2("Cards"),
        dbc.CardDeck(
            [
                dbc.Card(
                    [
                        dbc.CardHeader("Header"),
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This card has a title"),
                                dbc.CardText("And some text"),
                            ]
                        ),
                    ]
                ),
                dbc.Card(
                    [
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This card has a title"),
                                dbc.CardText("and some text, but no header"),
                            ]
                        )
                    ],
                    outline=True,
                    color="primary",
                ),
                dbc.Card(
                    [
                        dbc.CardBody(
                            [
                                dbc.CardTitle("This card has a title"),
                                dbc.CardText("and some text, and a footer!"),
                            ]
                        ),
                        dbc.CardFooter("Footer"),
                    ],
                    outline=True,
                    color="dark",
                ),
            ]
        ),
    ]
)

columns = html.Div(
    [
        html.H2("Columns"),
        dbc.Row(
            [
                dbc.Col(
                    html.Div(
                        "This is column 1",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=3,
                ),
                dbc.Col(
                    html.Div(
                        "This is column 2",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=6,
                ),
                dbc.Col(
                    html.Div(
                        "This is column 3",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=3,
                ),
            ]
        ),
        html.Br(),
        html.H4("Row with no gutters"),
        dbc.Row(
            [
                dbc.Col(
                    html.Div(
                        "This is column 1",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=3,
                ),
                dbc.Col(
                    html.Div(
                        "This is column 2",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=6,
                ),
                dbc.Col(
                    html.Div(
                        "This is column 3",
                        style={"height": "100px", "border-style": "solid"},
                    ),
                    md=3,
                ),
            ],
            noGutters=True,
        ),
    ]
)

app.layout = dbc.Container(
    [
        header,
        html.Br(),
        alerts,
        html.Br(),
        badges,
        html.Br(),
        buttons,
        html.Br(),
        cards,
        html.Br(),
        columns,
        html.Div(style={"height": "200px"}),
    ]
)


if __name__ == "__main__":
    app.run_server(port=8888)
