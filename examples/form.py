import re
from datetime import datetime

import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output

app = dash.Dash()

app.layout = dbc.Container(
    [
        html.H1("Form test"),
        html.H2("Input with validation"),
        dbc.FormGroup(
            [
                dbc.Label("Email", html_for="example-email"),
                dbc.Input(
                    type="email", id="example-email", placeholder="Enter email"
                ),
            ]
        ),
        dbc.FormGroup(
            [
                dbc.Label("Password", html_for="example-password"),
                dbc.Input(
                    type="password",
                    name="password",
                    id="example-password",
                    placeholder="Enter password",
                    value="",
                ),
                dbc.FormFeedback(
                    "Password is valid :-)",
                    id="example-password-feedback",
                    valid=True,
                ),
            ]
        ),
        html.Br(),
        html.H2("Radio items"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ]
        ),
        html.H2("Check boxes"),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            values=[],
        ),
        html.Br(),
        html.H3("Inline RadioItems and Checklist"),
        dbc.RadioItems(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            inline=True,
        ),
        dbc.Checklist(
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
            ],
            values=[],
            inline=True,
        ),
        html.Br(),
        html.H2("Input groups and addons"),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon(
                    dbc.Button("To the left!", color="danger"),
                    addonType="prepend",
                ),
                dbc.Input(type="text"),
            ]
        ),
        html.Br(),
        dbc.InputGroup(
            [
                dbc.Input(type="text"),
                dbc.InputGroupAddon(
                    dbc.Button("To the right!", color="success"),
                    addonType="append",
                ),
            ]
        ),
        html.Br(),
        dbc.InputGroup(
            [
                dbc.InputGroupAddon("@", addonType="prepend"),
                dbc.Input(type="text", placeholder="Enter username"),
            ]
        ),
        html.Br(),
        html.H2("Form Group Rows"),
        dbc.FormGroup(
            [
                dbc.Label("Email", html_for="example-email-row", width=2),
                dbc.Col(
                    dbc.Input(
                        type="email",
                        id="example-email-row",
                        placeholder="Enter email",
                    ),
                    width=10,
                ),
            ],
            row=True,
        ),
        dbc.FormGroup(
            [
                dbc.Label(
                    "Password", html_for="example-password-row", width=2
                ),
                dbc.Col(
                    dbc.Input(
                        type="password",
                        id="example-password-row",
                        placeholder="Enter password",
                    ),
                    width=10,
                ),
            ],
            row=True,
        ),
        dbc.FormGroup(
            [
                dbc.Label("Email", html_for="example-email-row", width=2),
                dbc.Col(
                    dcc.Dropdown(
                        options=[
                            {"label": "Option 1", "value": 1},
                            {"label": "Option 2", "value": 2},
                        ]
                    ),
                    width=10,
                ),
            ],
            row=True,
        ),
        html.Br(),
        html.H2("Form grid with form row"),
        dbc.Row(
            [
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Email", html_for="example-email-col"),
                            dbc.Input(
                                type="email",
                                id="example-email-col",
                                placeholder="Enter email",
                            ),
                        ]
                    ),
                    width=6,
                ),
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label(
                                "Password", html_for="example-password-col"
                            ),
                            dbc.Input(
                                type="password",
                                id="example-password-col",
                                placeholder="Enter password",
                            ),
                        ]
                    ),
                    width=6,
                ),
            ],
            form=True,
        ),
        html.H2("Dash core components"),
        dbc.FormGroup(
            [
                dbc.Label("Dropdown", html_for="dropdown"),
                dcc.Dropdown(
                    id="dropdown",
                    options=[
                        {"label": "Option 1", "value": 1},
                        {"label": "Option 2", "value": 2},
                    ],
                ),
            ]
        ),
        html.Br(),
        dbc.FormGroup(
            [
                dbc.Label("Slider", html_for="slider"),
                dcc.Slider(id="slider", min=0, max=10, step=0.5, value=3),
            ]
        ),
        html.Br(),
        dbc.FormGroup(
            [
                dbc.Label("RangeSlider", html_for="range-slider"),
                dcc.RangeSlider(
                    id="range-slider", min=0, max=10, value=[3, 7]
                ),
            ]
        ),
        html.Br(),
        dbc.FormGroup(
            [
                dbc.Label("DatePickerSingle", html_for="date-picker-single"),
                dcc.DatePickerSingle(
                    id="date-picker-single", date=datetime(2018, 10, 17)
                ),
            ]
        ),
        html.Br(),
        dbc.FormGroup(
            [
                dbc.Label("DatePickerSingle", html_for="date-picker-range"),
                dcc.DatePickerRange(
                    id="date-picker-range",
                    start_date=datetime(2018, 10, 17),
                    end_date_placeholder_text="Select date!",
                ),
            ]
        ),
        html.Br(),
        dbc.FormGroup(
            [
                dbc.Label(
                    "DatePickerSingle",
                    html_for="date-picker-range-row",
                    width=2,
                    className="align-self-center",  # TODO add this to api
                ),
                dbc.Col(
                    dcc.DatePickerRange(
                        id="date-picker-range-row",
                        start_date=datetime(2018, 10, 17),
                        end_date_placeholder_text="Select date!",
                    ),
                    width=10,
                ),
            ],
            row=True,
        ),
    ],
    style={"margin-bottom": "200px"},
)


@app.callback(
    Output("example-password-feedback", "valid"),
    [Input("example-password", "value")],
)
def check_valid_feedback(value):
    if re.match(r"\w{8,20}$", value):
        return True
    return False


@app.callback(
    Output("example-password", "valid"), [Input("example-password", "value")]
)
def check_valid(value):
    if re.match(r"\w{8,20}$", value):
        return True
    return False


@app.callback(
    Output("example-password", "invalid"), [Input("example-password", "value")]
)
def check_invalid(value):
    if value and not re.match(r"\w{8,20}$", value):
        return True
    return False


@app.callback(
    Output("example-password-feedback", "children"),
    [Input("example-password-feedback", "valid")],
)
def make_feedback(v):
    if v:
        return "That password is valid :-)"
    return "Passwords must be 8-20 alphanumeric characters"


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
