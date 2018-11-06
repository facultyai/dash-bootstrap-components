from datetime import datetime

import dash
import dash_bootstrap_components as dbc
import dash_html_components as html

app = dash.Dash()

app.layout = dbc.Container(
    [
        html.H1("Date picker testing"),
        dbc.DatePickerSingle(initial_visible_month=datetime(2018, 1, 1)),
        dbc.DatePickerSingle(
            initial_visible_month=datetime(2018, 1, 1), bs_size="sm"
        ),
        dbc.DatePickerSingle(
            initial_visible_month=datetime(2018, 1, 1), bs_size="lg"
        ),
    ]
)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
