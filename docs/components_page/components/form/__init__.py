from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .dcc import form as form_dcc
from .grid import form as form_grid
from .inline import form as form_inline
from .radio_check import form as form_radio_check
from .row import form as form_row
from .simple import form as form_simple

HERE = Path(__file__).parent

form_simple_source = (HERE / "simple.py").read_text()
form_radio_check_source = (HERE / "radio_check.py").read_text()
form_row_source = (HERE / "row.py").read_text()
form_grid_source = (HERE / "grid.py").read_text()
form_inline_source = (HERE / "inline.py").read_text()
form_dcc_source = (HERE / "dcc.py").read_text()

content = [
    html.H2("Simple form"),
    ExampleContainer(form_simple),
    HighlightedSource(form_simple_source),
    html.H4("RadioItems and Checklist"),
    ExampleContainer(form_radio_check),
    HighlightedSource(form_radio_check_source),
    html.H4("FormGroup row"),
    ExampleContainer(form_row),
    HighlightedSource(form_row_source),
    html.H4("Using grid layout with forms"),
    ExampleContainer(form_grid),
    HighlightedSource(form_grid_source),
    html.H4("Inline form"),
    ExampleContainer(form_inline),
    HighlightedSource(form_inline_source),
    html.H4("Dash Core Components"),
    html.P(
        [
            "The ",
            html.Code("Form"),
            " and ",
            html.Code("FormGroup"),
            " components work well with Dash core components",
        ]
    ),
    ExampleContainer(form_dcc),
    HighlightedSource(form_dcc_source),
    ApiDoc(
        get_component_metadata("src/components/form/Form.js"),
        component_name="Form",
    ),
    ApiDoc(
        get_component_metadata("src/components/form/FormGroup.js"),
        component_name="FormGroup",
    ),
    ApiDoc(
        get_component_metadata("src/components/input/RadioItems.js"),
        component_name="RadioItems",
    ),
    ApiDoc(
        get_component_metadata("src/components/input/Checklist.js"),
        component_name="Checklist",
    ),
]
