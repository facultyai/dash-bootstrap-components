from datetime import datetime

import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html

inline_form = dbc.Form(
    [
        dbc.FormGroup(
            [
                dbc.Label("Email", className="mr-2"),
                dbc.Input(type="email", placeholder="Enter email"),
            ],
            className="mr-2",
        ),
        dbc.FormGroup(
            [
                dbc.Label("Password", className="mr-2"),
                dbc.Input(type="password", placeholder="Enter password"),
            ],
            className="mr-2",
        ),
        dbc.FormGroup(
            [
                dbc.Label("Date", className="mr-2"),
                dcc.DatePickerSingle(
                    id="date-picker-inline", date=datetime(2018, 10, 17)
                ),
            ],
            className="mr-2",
        ),
    ],
    inline=True,
)

form = [html.H2("Inline forms"), inline_form]
