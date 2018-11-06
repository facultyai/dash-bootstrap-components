from pathlib import Path

from .api_doc import ApiDoc
from .components.forms.radio_check import form as form_radio_check
from .components.forms.row import form as form_row
from .components.forms.simple import form as form_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
FORMS = HERE / "components" / "forms"

form_simple_source = (FORMS / "simple.py").open().read()
form_radio_check_source = (FORMS / "radio_check.py").open().read()
form_row_source = (FORMS / "row.py").open().read()

content = [
    ExampleContainer(form_simple),
    HighlightedSource(form_simple_source),
    ExampleContainer(form_radio_check),
    HighlightedSource(form_radio_check_source),
    ExampleContainer(form_row),
    HighlightedSource(form_row_source),
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
