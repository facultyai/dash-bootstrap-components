from datetime import datetime, timedelta

import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html

SUNDAYS = [datetime(2018, 11, 4) + timedelta(7 * i) for i in range(4)]

app = dash.Dash()

app.layout = dbc.Container(
    [
        html.H1("Date picker testing"),
        html.H3("DatePickerSingle"),
        html.H6("Medium"),
        dbc.DatePickerSingle(initial_visible_month=datetime(2018, 1, 1)),
        html.Br(),
        html.H6("Small"),
        dbc.DatePickerSingle(
            initial_visible_month=datetime(2018, 1, 1), bs_size="sm"
        ),
        html.Br(),
        html.H6("Large"),
        dbc.DatePickerSingle(
            initial_visible_month=datetime(2018, 1, 1), bs_size="lg"
        ),
        html.Br(),
        html.H3("DatePickerRange"),
        html.H6("Medium"),
        dbc.DatePickerRange(initial_visible_month=datetime(2018, 1, 1)),
        html.Br(),
        html.H6("Small"),
        dbc.DatePickerRange(
            initial_visible_month=datetime(2018, 1, 1), bs_size="sm"
        ),
        html.Br(),
        html.H6("Large"),
        dbc.DatePickerRange(
            initial_visible_month=datetime(2018, 1, 1), bs_size="lg"
        ),
        html.Br(),
        html.H3("Disabled days"),
        dbc.DatePickerSingle(
            initial_visible_month=datetime(2018, 11, 8),
            min_date_allowed=datetime(2018, 11, 1),
            max_date_allowed=datetime(2018, 11, 30),
            disabled_days=SUNDAYS,
        ),
        html.Br(),
        dbc.DatePickerRange(
            initial_visible_month=datetime(2018, 11, 8),
            min_date_allowed=datetime(2018, 11, 1),
            max_date_allowed=datetime(2018, 11, 30),
            disabled_days=SUNDAYS,
        ),
        html.Br(),
        html.H3("Dash Core Components"),
        dcc.DatePickerRange(initial_visible_month=datetime(2018, 1, 1)),
        html.Br(),
        html.H3("FormGroup"),
        dbc.Row(
            [
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Type a thing"),
                            dbc.Input(type="text", bs_size="sm"),
                        ]
                    )
                ),
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Choose a date"),
                            dbc.DatePickerSingle(
                                initial_visible_month=datetime(2018, 1, 1),
                                bs_size="sm",
                            ),
                        ]
                    ),
                    width="auto",
                ),
            ]
        ),
        html.Br(),
        dbc.Row(
            [
                dbc.Col(
                    dbc.FormGroup(
                        [dbc.Label("Type a thing"), dbc.Input(type="text")]
                    )
                ),
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Choose a date"),
                            dbc.DatePickerSingle(
                                initial_visible_month=datetime(2018, 1, 1)
                            ),
                        ]
                    ),
                    width="auto",
                ),
            ]
        ),
        html.Br(),
        dbc.Row(
            [
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Type a thing"),
                            dbc.Input(type="text", bs_size="lg"),
                        ]
                    )
                ),
                dbc.Col(
                    dbc.FormGroup(
                        [
                            dbc.Label("Choose a date"),
                            dbc.DatePickerSingle(
                                initial_visible_month=datetime(2018, 1, 1),
                                bs_size="lg",
                            ),
                        ]
                    ),
                    width="auto",
                ),
            ]
        ),
    ]
)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
