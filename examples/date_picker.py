from datetime import datetime

import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html

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
        html.H3("Date Core Components"),
        dcc.DatePickerRange(initial_visible_month=datetime(2018, 1, 1)),
    ]
)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
