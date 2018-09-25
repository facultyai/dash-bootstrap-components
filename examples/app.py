import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output, State

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

collapse = html.Div(
    [
        html.H2("Collapse"),
        dbc.Button(
            "Open collapse",
            id="collapse-button",
            style={"margin-bottom": "1rem"},
        ),
        dbc.Collapse(
            dbc.Card(dbc.CardBody("This content is hidden in the collapse")),
            id="collapse",
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

fade = html.Div(
    [
        html.H2("Fade"),
        dbc.Button(
            "Toggle fade", id="fade-button", style={"margin-bottom": "1rem"}
        ),
        dbc.Fade(
            dbc.Card(
                dbc.CardBody(dbc.CardText("This content fades in and out"))
            ),
            id="fade",
        ),
    ]
)


popover = html.Div(
    [
        html.H2("Popover"),
        html.P(
            ["Click on the word ", html.Span("popover", id="popover-target")]
        ),
        dbc.Popover(
            [
                dbc.PopoverHeader("Popover header"),
                dbc.PopoverBody("Popover body"),
            ],
            id="popover",
            isOpen=False,
            target="popover-target",
        ),
    ]
)

progress = html.Div(
    [
        html.H2("Progress"),
        dbc.Progress(id="progress", value=0, striped=True, animated=True),
    ]
)


table = html.Div(
    [
        html.H2("Table"),
        dbc.Table(
            [
                html.Thead(
                    html.Tr(
                        [
                            html.Th("#"),
                            html.Th("First name"),
                            html.Th("Last name"),
                        ]
                    )
                ),
                html.Tbody(
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
                ),
            ],
            responsive=True,
            striped=True,
            hover=True,
        ),
    ]
)

tooltip = html.Div(
    [
        html.H2("Tooltip"),
        html.P(
            [
                "I wonder what ",
                html.Span(
                    "floccinaucinihilipilification", id="tooltip-target"
                ),
                " means?",
            ]
        ),
        dbc.Tooltip(
            "Noun: rare, "
            "the action or habit of estimating something as worthless.",
            target="tooltip-target",
        ),
    ]
)

app.layout = dbc.Container(
    [
        dcc.Interval(id="interval", interval=500),
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
        collapse,
        html.Br(),
        columns,
        html.Br(),
        fade,
        html.Br(),
        popover,
        html.Br(),
        progress,
        html.Br(),
        table,
        html.Br(),
        tooltip,
        html.Div(style={"height": "200px"}),
    ]
)


@app.callback(
    Output("collapse", "isOpen"),
    [Input("collapse-button", "n_clicks")],
    [State("collapse", "isOpen")],
)
def toggle_collapse(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(
    Output("fade", "in"),
    [Input("fade-button", "n_clicks")],
    [State("fade", "in")],
)
def toggle_fade(n, is_in):
    if n:
        return not is_in
    return is_in


@app.callback(
    Output("popover", "isOpen"),
    [Input("popover-target", "n_clicks")],
    [State("popover", "isOpen")],
)
def toggle_popover(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(Output("progress", "value"), [Input("interval", "n_intervals")])
def advance_progress(n):
    # advance to 100 then pause for a bit
    return min(n % 111, 100)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
