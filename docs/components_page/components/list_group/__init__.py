from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata
from .colors import list_group as list_group_colors
from .content import list_group as list_group_content
from .simple import list_group as list_group_simple

HERE = Path(__file__).parent

list_group_simple_source = (HERE / "simple.py").read_text()
list_group_links_source = (HERE / "links.py").read_text()
list_group_colors_source = (HERE / "colors.py").read_text()
list_group_content_source = (HERE / "content.py").read_text()

links_explainer = html.P(
    [
        "You can use ",
        html.Code("ListGroupItem"),
        " as an internal or external link, or use its ",
        html.Code("n_clicks"),
        " prop in callbacks. Use the ",
        html.Code("disabled"),
        " prop to disable the link / button behaviour.",
    ]
)

content_explainer = html.P(
    [
        "You can pass any Dash components to the children of ",
        html.Code("ListGroupItem"),
        ". The components ",
        html.Code("ListGroupItemHeading"),
        " and ",
        html.Code("ListGroupItemText"),
        " automatically apply the relevant Bootstrap classes for styling "
        "text content in list groups.",
    ]
)


def get_content(app):
    return [
        html.H2("List Group"),
        ExampleContainer(list_group_simple),
        HighlightedSource(list_group_simple_source),
        html.H4("Links"),
        links_explainer,
        ExampleContainer(
            load_source_with_environment(
                list_group_links_source, "list_group", {"app": app}
            )
        ),
        HighlightedSource(list_group_links_source),
        html.H4("Colors"),
        ExampleContainer(list_group_colors),
        HighlightedSource(list_group_colors_source),
        html.H4("Custom content"),
        content_explainer,
        ExampleContainer(list_group_content),
        HighlightedSource(list_group_content_source),
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
