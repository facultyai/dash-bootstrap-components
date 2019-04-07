from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .color import badges as badges_color
from .links import badges as badges_links
from .pills import badges as badges_pills
from .simple import badge as badges_simple
from .size import badges as badges_size

HERE = Path(__file__).parent

badges_simple_source = (HERE / "simple.py").read_text()
badges_size_source = (HERE / "size.py").read_text()
badges_color_source = (HERE / "color.py").read_text()
badges_pills_source = (HERE / "pills.py").read_text()
badges_links_source = (HERE / "links.py").read_text()

content = [
    html.H2("Badges", className="display-4"),
    html.P(
        dcc.Markdown(
            "Documentation and examples for how to use Bootstrap "
            "badges with *dash-bootstrap-components*."
        ),
        className="lead",
    ),
    html.H4("Simple example"),
    html.P(
        dcc.Markdown(
            "Badges can be used as part of buttons or links to provide a "
            "counter."
        )
    ),
    ExampleContainer(badges_simple),
    HighlightedSource(badges_simple_source),
    html.H4("Badge sizing"),
    html.P(
        dcc.Markdown(
            "Badges scale to match the size of their parent by using relative "
            "font sizing."
        )
    ),
    ExampleContainer(badges_size),
    HighlightedSource(badges_size_source),
    html.H4("Contextual variations"),
    html.P(
        dcc.Markdown(
            "Use the `color` argument to apply one of Bootstrap's contextual "
            "color classes."
        )
    ),
    ExampleContainer(badges_color),
    HighlightedSource(badges_color_source),
    html.H4("Pill badges"),
    html.P(
        dcc.Markdown(
            "Set `pill=True` to make the badges more rounded (with a larger "
            "`border-radius` and additional horizontal padding)."
        )
    ),
    ExampleContainer(badges_pills),
    HighlightedSource(badges_pills_source),
    html.H4("Links"),
    html.P(
        dcc.Markdown(
            "Add a link with the `href` argument to create actionable badges "
            "with hover and focus states."
        )
    ),
    ExampleContainer(badges_links),
    HighlightedSource(badges_links_source),
    ApiDoc(get_component_metadata("src/components/Badge.js")),
]
