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
from .active import list_group as list_group_active
from .colors import list_group as list_group_colors
from .content import list_group as list_group_content
from .horizontal import list_group as list_group_horizontal
from .simple import list_group as list_group_simple

HERE = Path(__file__).parent

list_group_simple_source = (HERE / "simple.py").read_text()
list_group_active_source = (HERE / "active.py").read_text()
list_group_links_source = (HERE / "links.py").read_text()
list_group_colors_source = (HERE / "colors.py").read_text()
list_group_content_source = (HERE / "content.py").read_text()
list_group_horizontal_source = (HERE / "horizontal.py").read_text()


def get_content(app):
    return [
        html.H2("List Group", className="display-4"),
        html.P(
            dcc.Markdown(
                "A simple, flexible component for displaying a series of "
                "content."
            ),
            className="lead",
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "The most basic `ListGroup` is an unordered list of "
                "`ListGroupItem` components."
            )
        ),
        ExampleContainer(list_group_simple),
        HighlightedSource(list_group_simple_source),
        html.H4("Active items"),
        html.P(
            dcc.Markdown(
                "Set `active=True` to indicate the current active selection."
            )
        ),
        ExampleContainer(list_group_active),
        HighlightedSource(list_group_active_source),
        html.H4("Links"),
        html.P(
            dcc.Markdown(
                "You can use `ListGroupItem` as an internal, or external "
                "link, or use its `n_clicks` prop in callbacks. Use the "
                "`disabled` prop to disable the link / button behaviour."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                list_group_links_source, "list_group", {"app": app}
            )
        ),
        HighlightedSource(list_group_links_source),
        html.H4("Colors"),
        html.P(
            dcc.Markdown(
                "Pass one of Bootstrap's contextual colors to the `color` "
                "argument of `ListGroupItem` to set the background and text "
                "color of the contents."
            )
        ),
        ExampleContainer(list_group_colors),
        HighlightedSource(list_group_colors_source),
        html.H4("Custom content"),
        html.P(
            dcc.Markdown(
                "You can pass any Dash components to the children of "
                "`ListGroupItem`. The components `ListGroupItemHeading` and "
                "`ListGroupItemText` automatically apply the relevant CSS "
                "classes for styling text content in list groups."
            )
        ),
        ExampleContainer(list_group_content),
        HighlightedSource(list_group_content_source),
        html.H4("Horizontal"),
        html.P(
            dcc.Markdown(
                "You can create a horizontal list group by setting "
                "`horizontal=True`. Alternatively, supply one of the "
                "Bootstrap breakpoints for a list group that is horizontal at "
                "that breakpoint and up."
            )
        ),
        html.P(
            dcc.Markdown(
                "In the below example, the first list group is always "
                "horizontal, the second is horizontal at the large breakpoint "
                "and up, and stacks vertically on smaller screens."
            )
        ),
        ExampleContainer(list_group_horizontal),
        HighlightedSource(list_group_horizontal_source),
        ApiDoc(
            get_component_metadata("src/components/listgroup/ListGroup.js"),
            component_name="ListGroup",
        ),
        ApiDoc(
            get_component_metadata(
                "src/components/listgroup/ListGroupItem.js"
            ),
            component_name="ListGroupItem",
        ),
        ApiDoc(
            get_component_metadata(
                "src/components/listgroup/ListGroupItemHeading.js"
            ),
            component_name="ListGroupItemHeading",
        ),
        ApiDoc(
            get_component_metadata(
                "src/components/listgroup/ListGroupItemText.js"
            ),
            component_name="ListGroupItemText",
        ),
    ]
