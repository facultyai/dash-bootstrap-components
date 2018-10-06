
from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc

from .alerts import alerts
from .badges import badges

HERE = Path(__file__).parent

alerts_source = (HERE / "alerts.py").open().read()
badges_source = (HERE / "badges.py").open().read()


header = html.Div(
    [
        html.H1("Dash Bootstrap Components"),
        html.P(
            [
                "This app demonstrates components available in ",
                html.Code("dash-bootstrap-components"),
            ]
        ),
    ]
)

components_page = dbc.Container([
    header,
    alerts,
    dcc.SyntaxHighlighter(alerts_source, language='python', theme='dark'),
    html.Br(),
    badges,
    dcc.SyntaxHighlighter(badges_source, language='python', theme='dark'),
    html.Br()
])
