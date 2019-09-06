from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata
from .content import alert as alert_content
from .link import alerts as alerts_link
from .simple import alerts as alerts_simple

HERE = Path(__file__).parent

alerts_simple_source = (HERE / "simple.py").read_text()
alerts_link_source = (HERE / "link.py").read_text()
alert_content_source = (HERE / "content.py").read_text()
alerts_dismiss_source = (HERE / "dismiss.py").read_text()
alerts_auto_dismiss_source = (HERE / "auto_dismiss.py").read_text()


def get_content(app):
    return [
        html.H2("Alerts", className="display-4"),
        html.P(
            dcc.Markdown(
                "Provide contextual feedback messages for user actions with "
                "the `Alert` component."
            ),
            className="lead",
        ),
        html.H4("Basic usage"),
        html.P(
            dcc.Markdown(
                "Set the color of `Alert` using the `color` argument and one "
                "of the eight supported contextual color names."
            )
        ),
        ExampleContainer(alerts_simple),
        HighlightedSource(alerts_simple_source),
        html.H4("Link color"),
        html.P(
            dcc.Markdown(
                "The Bootstrap `alert-link` class can be used to color match "
                "links inside alerts to the color of the alert."
            )
        ),
        ExampleContainer(alerts_link),
        HighlightedSource(alerts_link_source),
        html.H4("Additional content"),
        html.P(
            dcc.Markdown(
                "Alerts can contain additional HTML elements like headings, "
                "paragraphs and dividers."
            )
        ),
        ExampleContainer(alert_content),
        HighlightedSource(alert_content_source),
        html.H4("Dismissing"),
        html.P(
            dcc.Markdown(
                "Set `dismissable=True` to add a dismiss button to the alert "
                "which closes the alert on click. You can also use the "
                "`is_open` property in callbacks to show or hide the alert. "
                "By default the alert appears and disappears with a fade "
                "animation. To disable this simply set `fade=False`."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                alerts_dismiss_source, "alert", {"app": app}
            )
        ),
        HighlightedSource(alerts_dismiss_source),
        html.H4("Automatic dismissal"),
        html.P(
            dcc.Markdown(
                "You can have your `Alert` components dismiss themselves by "
                "using the `duration` keyword argument. Specify a duration in "
                "milliseconds after which you would like the `Alert` to "
                "dismiss itself when it first becomes visible."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                alerts_auto_dismiss_source, "alert", {"app": app}
            )
        ),
        HighlightedSource(alerts_auto_dismiss_source),
        ApiDoc(get_component_metadata("src/components/Alert.js")),
    ]
