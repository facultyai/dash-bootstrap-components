from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .placement import tooltips as tooltips_placement
from .tooltip import tooltip

HERE = Path(__file__).parent

source = (HERE / "tooltip.py").read_text()
placement_source = (HERE / "placement.py").read_text()

content = [
    html.H2("Tooltip", className="display-4"),
    html.P(
        dcc.Markdown(
            "Use the `Tooltip` component to add Bootstrap style tooltips to "
            "your app, with no callbacks required."
        ),
        className="lead",
    ),
    html.H4("Basic example"),
    html.P(
        dcc.Markdown(
            "To use the `Tooltip` component, simply add it to the layout of "
            "your app, and give it the id of a component in your layout that "
            "you would like to use as the target. When the user hovers over "
            "the target component, the tooltip will display. There is no need "
            "to write any callbacks."
        )
    ),
    html.P(
        dcc.Markdown(
            "In the below example we use a `html.Span` component to target a "
            "particular word in a piece of text."
        )
    ),
    ExampleContainer(tooltip),
    HighlightedSource(source),
    html.H4("Placement"),
    html.P(
        dcc.Markdown(
            "Use the `placement` argument to control the placement of the "
            "tooltip. The basic options are `'auto'`, `'top'`, `'left'`, "
            "`'right'`, `'bottom'`. You can additionally add `-start` or "
            "`-end` to any of these options, e.g. `'top-start'`."
        )
    ),
    ExampleContainer(tooltips_placement),
    HighlightedSource(placement_source),
    ApiDoc(get_component_metadata("src/components/Tooltip.js")),
]
