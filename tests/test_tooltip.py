from dash import Dash, html
from dash_bootstrap_components import Tooltip


def test_dbto001_dict_id(dash_duo):
    """
    Checks that tooltip works with a dict id in the Target prop.
    """
    app = Dash()

    app.layout = html.Div(
        [
            html.Div("Target", id={"type": "tooltip", "index": 1},),
            Tooltip("Tooltip text", target={"type": "tooltip", "index": 1},),
        ],
    )

    dash_duo.start_server(app)

    dash_duo.wait_for_element_by_id('{"index":1,"type":"tooltip"}').click()

    assert (
        dash_duo.driver.find_element_by_class_name("tooltip-inner").text
        == "Tooltip text"
    )

    assert dash_duo.get_logs() == []
