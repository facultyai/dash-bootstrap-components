from dash import Dash
from dash_bootstrap_components import Alert
from dash.html import Div


def test_dbal001_alert_content(dash_duo):
    app = Dash()

    app.layout = Div([Alert("Test content", id="alert")])

    dash_duo.start_server(app)

    assert dash_duo.wait_for_element("#alert").text == "Test content"
