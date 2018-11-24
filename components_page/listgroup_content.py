from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.listgroup.colors import listgroup as listgroup_colors
from .components.listgroup.simple import listgroup as listgroup_simple
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent
LISTGROUP = HERE / "components" / "listgroup"

listgroup_simple_source = (LISTGROUP / "simple.py").open().read()
listgroup_links_source = (LISTGROUP / "links.py").open().read()
listgroup_colors_source = (LISTGROUP / "colors.py").open().read()

links_explainer = html.P(
    [
        "You can use ",
        html.Code("ListGroupItem"),
        " as an internal or external link, or use its ",
        html.Code("n_clicks"),
        " prop in callbacks. Use the ",
        html.Code("disabled"),
        " prop to disable the link / button behaviour."
    ]
)


def get_content(app):
    return [
        html.H2("List Group"),
        ExampleContainer(listgroup_simple),
        HighlightedSource(listgroup_simple_source),
        html.H2("Links"),
        links_explainer,
        ExampleContainer(
            load_source_with_environment(
                listgroup_links_source, "listgroup", {"app": app}
            )
        ),
        HighlightedSource(listgroup_links_source),
        html.H2("Colors"),
        ExampleContainer(listgroup_colors),
        HighlightedSource(listgroup_colors_source),
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
