from dash import Dash, html
from dash_bootstrap_components import Tooltip, themes
from selenium.webdriver.common.action_chains import ActionChains


def test_dbtt001_tooltip_content(dash_duo):
    app = Dash(external_stylesheets=[themes.BOOTSTRAP])

    app.layout = html.Div(
        [
            Tooltip("Test content", id="tooltip", target="tooltip-target"),
            html.Div("Target", id="tooltip-target"),
        ],
        className="container p-5",
    )

    dash_duo.start_server(app)

    hover = ActionChains(dash_duo.driver).move_to_element(
        dash_duo.wait_for_element_by_id("tooltip-target")
    )
    hover.perform()
    dash_duo.wait_for_text_to_equal(
        ".tooltip-inner", "Test content", timeout=4
    )
