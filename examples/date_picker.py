from datetime import datetime

import dash
import dash_bootstrap_components as dbc

app = dash.Dash()

app.layout = dbc.Container(
    dbc.DatePickerSingle(initial_visible_month=datetime(2018, 1, 1))
)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
