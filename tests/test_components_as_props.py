import dash_bootstrap_components as dbc
from dash import Dash, html


def test_mdcap001_components_as_props(dash_duo):
    app = Dash(__name__)

    app.layout = html.Div(
        [
            dbc.Checklist(
                [
                    {"label": html.H2("H2 label"), "value": "h2"},
                    {
                        "label": html.A("Link in checklist", href="#"),
                        "value": "a",
                    },
                ],
                id="checklist",
            ),
            dbc.RadioItems(
                [
                    {"label": html.H3("on"), "value": "on"},
                    {"label": html.P("off"), "value": "off"},
                ],
                id="radio-items",
            ),
            dbc.Checkbox(label=html.H4("h4"), value="h4", id="checkbox"),
            dbc.RadioButton(label=html.H6("h6"), value="h6", id="radiobutton"),
            dbc.Switch(label=html.H5("h5"), value="h5", id="switch"),
        ]
    )

    dash_duo.start_server(app)

    dash_duo.wait_for_text_to_equal("#checklist h2", "H2 label")
    dash_duo.wait_for_text_to_equal("#checklist a", "Link in checklist")

    dash_duo.wait_for_text_to_equal("#radio-items h3", "on")
    dash_duo.wait_for_text_to_equal("#radio-items p", "off")

    dash_duo.wait_for_text_to_equal("#checkbox+label", "h4")
    dash_duo.wait_for_text_to_equal("#radiobutton+label", "h6")
    dash_duo.wait_for_text_to_equal("#switch+label", "h5")
