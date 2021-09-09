from dash import Dash, html
from dash_bootstrap_components import Alert


def test_dbal001_alert_content(dash_duo):
    app = Dash()

    app.layout = html.Div([Alert("Test content", id="alert")])

    dash_duo.start_server(app)

    assert dash_duo.wait_for_element("#alert").text == "Test content"
