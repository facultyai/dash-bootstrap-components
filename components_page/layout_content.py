from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.layout.breakpoints import row as layout_breakpoints
from .components.layout.horizontal import row as layout_horizontal
from .components.layout.no_gutters import row as layout_no_gutters
from .components.layout.order_offset import row as layout_order_offset
from .components.layout.simple import row as layout_simple
from .components.layout.vertical import row as layout_vertical
from .components.layout.width import row as layout_width
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
LAYOUT = HERE / "components" / "layout"

layout_simple_source = (LAYOUT / "simple.py").read_text()
layout_width_source = (LAYOUT / "width.py").read_text()
layout_order_offset_source = (LAYOUT / "order_offset.py").read_text()
layout_breakpoints_source = (LAYOUT / "breakpoints.py").read_text()
layout_no_gutters_source = (LAYOUT / "no_gutters.py").read_text()
layout_vertical_source = (LAYOUT / "vertical.py").read_text()
layout_horizontal_source = (LAYOUT / "horizontal.py").read_text()


content = html.Div(
    [
        ExampleContainer(layout_simple),
        HighlightedSource(layout_simple_source),
        ExampleContainer(layout_width),
        HighlightedSource(layout_width_source),
        ExampleContainer(layout_order_offset),
        HighlightedSource(layout_order_offset_source),
        ExampleContainer(layout_breakpoints),
        HighlightedSource(layout_breakpoints_source),
        ExampleContainer(layout_no_gutters),
        HighlightedSource(layout_no_gutters_source),
        html.Div(
            [
                ExampleContainer(layout_vertical),
                HighlightedSource(layout_vertical_source),
            ],
            className="pad-row",
        ),
        ExampleContainer(layout_horizontal),
        HighlightedSource(layout_horizontal_source),
        ApiDoc(
            get_component_metadata("src/components/layout/Row.js"),
            component_name="Row",
        ),
        ApiDoc(
            get_component_metadata("src/components/layout/Col.js"),
            component_name="Col",
        ),
    ],
    className="layout-demo",
)
