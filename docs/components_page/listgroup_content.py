from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.listgroup.simple import listgroup as listgroup_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
LISTGROUP = HERE / "components" / "listgroup"

listgroup_simple_source = (LISTGROUP / "simple.py").open().read()

content = [
    html.H2("List Group"),
    ExampleContainer(listgroup_simple),
    HighlightedSource(listgroup_simple_source),
    ApiDoc(
        get_component_metadata("src/components/listgroup/ListGroup.js"),
        component_name="ListGroup",
    ),
    ApiDoc(
        get_component_metadata("src/components/listgroup/ListGroupItem.js"),
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
